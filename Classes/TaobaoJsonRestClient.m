#import "TaobaoJsonRestClient.h"
#import "ApiConstants.h"
#import "TaobaoApiMethod.h"
#import "UrlResponse.h"
#import "ItemsGetResponse.h"
#import "JSON.h"
#import "TaobaoItemJSONConvert.h"
#import "DateUtil.h"
#import "EncryptUtil.h"
#import "JSONObject.h";
#import "JSONArray.h";



static NSString* const FORMAT = @"format";
static NSString* const JSON_FORMAT = @"json";
static NSString* const V = @"v";

@interface TaobaoJsonRestClient (private)
-(void) useTaobaoProtocol;
-(void) useSIPProtocol;
-(NSString *)getApiKeyName;
-(NSString *)getMethodName;
-(NSString *)getSignName;
-(NSString *) getSessionIdName;
-(NSString *) getTimestampName;
-(NSString *)getTimestamp;
-(NSMutableDictionary *)getTemplateRequest: (NSString *)method andSession:(NSString *)session andParams:(NSMutableDictionary *)params;
-(NSMutableDictionary *)getTemplateRequest:(NSString *)method andParams:(NSMutableDictionary *)params;
-(void)printDictionary: (NSDictionary *)dict;
@end

@implementation TaobaoJsonRestClient

@synthesize appkey;
@synthesize v;
@synthesize secret;
@synthesize serviceUrl;
@synthesize fetch;
@synthesize delegate;

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)newAppkey andSecret: (NSString *)newSecret {

    if (self = [super init]) {
        [self initWithAppkey:newAppkey andSecret:newSecret andIsSandbox:NO];
		/*BOOL isSandbox = NO;
		NSString *newServiceUrl = isSandbox ? SIP_SANDBOX_SERVICE_URL:SIP_SERVICE_URL;
		self.serviceUrl = newServiceUrl;
		self.appkey = newAppkey;
		self.secret = newSecret;
		self.v = DEFAULT_SERVICE_VERSION;
		self.fetch = [[TaobaoUrlFetch alloc] init];
		fetch.delegate = self;*/
    }
	/*
	NSLog(@"%@", self.appkey);
	NSLog(@"%@", self.secret);
	NSLog(@"%@", self.serviceUrl);
	NSLog(@"%@", self.v);*/
    return self;
}

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)newAppkey andSecret: (NSString *)newSecret
                                                             andIsSandbox: (BOOL)isSandbox {
    if (self == nil) {
    	self = [super init];
    }
    if (self) {
        NSString *newServiceUrl = isSandbox ? SIP_SANDBOX_SERVICE_URL:SIP_SERVICE_URL;
    	[self initWithServiceUrl:newServiceUrl andAppkey:newAppkey andSecret:newSecret];
    }
    return self;
}

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)newAppkey andSecret: (NSString *)newSecret
                                                             andIsSandbox: (BOOL)isSandbox 
                                                             andSipProtocol: (BOOL)sipProtocol {                                                       
	if (self = [super init]) {
		NSString *newServiceUrl = isSandbox ? (sipProtocol ? SIP_SANDBOX_SERVICE_URL
				: API_SANDBOX_SERVICE_URL)
				: (sipProtocol ? SIP_SERVICE_URL
						: API_SERVICE_URL);
		[self initWithServiceUrl:newServiceUrl andAppkey:newAppkey andSecret:newSecret andSipProtocol:sipProtocol];
	}
	return self;                                           
}

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)newServiceUrl
                                                   andAppkey: (NSString *)newAppkey
                                                   andSecret: (NSString *)newSecret {
                                                   
    if (self == nil) {
    	self = [super init];
    }
    if (self) {
        [self initWithServiceUrl:newServiceUrl andVersion:DEFAULT_SERVICE_VERSION andAppkey:newAppkey andSecret:newSecret];
    }
    return self;                           
                                                   
}
-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)newServiceUrl
                                                   andAppkey: (NSString *)newAppkey
                                                   andSecret: (NSString *)newSecret 
                                                   andSipProtocol: (BOOL)sipProtocol {                                                 
	if (self == nil) {
	    self = [super init];
	}
	
	if (self) {
		[self initWithServiceUrl:newServiceUrl andVersion:DEFAULT_SERVICE_VERSION andAppkey:newAppkey andSecret:newSecret andSipProtocol:sipProtocol];
	}                                           
	return self;                                             
}

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)newServiceUrl andVersion: (NSString *)version 
                                                   andAppkey: (NSString *)newAppkey
                                                   andSecret: (NSString *)newSecret {
	if (self == nil) {
		self = [super init];
	}
	if (self) {
		[self initWithServiceUrl:newServiceUrl andVersion:DEFAULT_SERVICE_VERSION andAppkey:newAppkey andSecret:newSecret andSipProtocol:YES];
	}
   return self;
}

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)newServiceUrl andVersion: (NSString *)version 
                                                   andAppkey: (NSString *)newAppkey
                                                   andSecret: (NSString *)newSecret 
                                                   andSipProtocol: (BOOL)sipProtocol{
	if (self == nil) {
		self = [super init];
	}
	if (self) {
		self.serviceUrl = newServiceUrl;
		self.appkey = newAppkey;
		self.secret = newSecret;
		self.v = version;
		self.fetch = [[TaobaoUrlFetch alloc] init];
		fetch.delegate = self;
		if (sipProtocol) {
			[self useSIPProtocol];
		} else {
			[self useTaobaoProtocol];
		}
	}
	return self;
}

-(void) useTaobaoProtocol {
	[ApiConstants setEnableTaobao:YES];
	[ApiConstants setEnableSIP:NO];
}

-(void) useSIPProtocol {
	[ApiConstants setEnableTaobao:NO];
	[ApiConstants setEnableSIP:YES];
}

-(NSString *)getApiKeyName {
	NSString *apiKey;
	if ([ApiConstants enableSIP]) {
		apiKey = [[NSString alloc] initWithString: SIP_APPKEY];	
	}
	else if ([ApiConstants enableTaobao]) {
		apiKey = [[NSString alloc] initWithString: APIKEY];
	}
	else {
		apiKey = [[NSString alloc] initWithString:EMPTY_STR];
	}
	[apiKey autorelease];
	return apiKey;
}

-(NSString *)getMethodName {
	NSString *method;
	if ([ApiConstants enableSIP]) {
		method = [[NSString alloc] initWithString: SIP_APINAME];	
	}
	else if ([ApiConstants enableTaobao]) {
		method = [[NSString alloc] initWithString: METHOD];
	}
	else {
		method = [[NSString alloc] initWithString: EMPTY_STR];
	}
	[method autorelease];
	return method;
}

-(NSString *)getSignName {
	NSString *sign;
	if ([ApiConstants enableSIP]) {
		sign = [[NSString alloc] initWithString:SIP_SIGN];
	}
	else if ([ApiConstants enableTaobao]) {
		sign = [[NSString alloc] initWithString:SIGN];
	}
	else {
		sign = [[NSString alloc] initWithString:EMPTY_STR];
	}
	[sign autorelease];
	return sign;
}

-(NSString *) getSessionIdName {
	NSString *session;
	if ([ApiConstants enableSIP]) {
		session = [[NSString alloc] initWithString:SIP_SESSIONID];
	}
	else if ([ApiConstants enableTaobao]) {
		session = [[NSString alloc] initWithString:SESSION];
	}
	else {
		session = [[NSString alloc] initWithString:EMPTY_STR];
	}
	[session autorelease];
	return session;
}

-(NSString *) getTimestampName {
	NSString *timestamp;
	if ([ApiConstants enableSIP]) {
		timestamp = [[NSString alloc] initWithString:SIP_TIMESTAMP];
	}
	else if ([ApiConstants enableTaobao]) {
		timestamp = [[NSString alloc] initWithString:TIMESTAMP];
	}
	else {
		timestamp = [[NSString alloc] initWithString:EMPTY_STR];
	}
	[timestamp autorelease];
	return timestamp;
}

-(void)parseError:(UrlResponse *)response andJSONObject:(JSONObject *)json {
	if ([json has:ERROR_RSP]) {
		JSONObject *errorRsp = [[JSONObject alloc] initWithJSONObject:[json getJSONObject:ERROR_RSP]];
		response.errorCode = [errorRsp getString:ERROR_CODE];
		response.msg = [errorRsp getString:ERROR_MSG];
		[errorRsp release];
	}
}

-(void)setTotalResults:(JSONObject *)rsp andListUrlResponse:(ListUrlResponse *)listUrlResponse {
	if ([rsp has:TOTALRESULTS]) {
		listUrlResponse.totalResults = [[rsp getString:TOTALRESULTS] integerValue];
	}

}

-(NSString *)getTimestamp {
	return [DateUtil dateToStr:[NSDate date]];
}

-(NSMutableDictionary *)getTemplateRequest:(NSString *)method andSession:(NSString *)session andParams:(NSMutableDictionary *)params {
    NSMutableDictionary *request = [NSMutableDictionary dictionary];
    
	[request setValue:appkey forKey:[self getApiKeyName]];
	[request setValue:[self getTimestamp] forKey:[self getTimestampName]];
	[request setValue:method forKey:[self getMethodName]];
	
	if (session != nil) {
		[request setValue:session forKey:[self getSessionIdName]];
	}
	[request setValue:v forKey:V];
	[request setValue:JSON_FORMAT forKey:FORMAT];
	
	
	
	for (NSString *key in params) {
		id value = [params valueForKey:key];
		if ( value == nil) {
			continue;
		}		
		if ( [value isKindOfClass:[NSDate class]]) {
			[request setValue:[DateUtil dateToStr:value] forKey:key];
		}
		else {
			[request setValue:value forKey:key];
		}
	}
	[request setValue:[EncryptUtil signatureWithParams:request andSecret:secret andSignName:[self getSignName]] forKey:[self getSignName]];
	return request;		
}


-(void)printDictionary: (NSDictionary *)dict {
	for (NSString *key in dict) {
		NSLog(@"%@ = %@", key, [dict valueForKey:key]);
	}
}

-(NSMutableDictionary *)getTemplateRequest:(NSString *)method andParams:(NSMutableDictionary *)params {
	return [self getTemplateRequest:method andSession:nil andParams:params];

}

-(void)taobaoUrlFetch:(TaobaoUrlFetch *)urlFetch didRetrieveData:(NSData *)data {
	NSLog(@"taobaoUrlFetch didRetrieveData");
	SEL process = NSSelectorFromString([urlFetch.methodSelectorDictionary valueForKey:urlFetch.method]);
	[self performSelector:process withObject:data];
}

-(void)taobaoUrlFetch:(TaobaoUrlFetch *)fetch didFailWithError:(NSError *)error {
	NSLog(@"connection fail");
	if ((delegate != nil) && [delegate respondsToSelector:@selector(connectionError:)]) {
		[delegate connectionError:error];
	}
}

-(void) itemsGet:(ItemsGetRequest *)itemsGetRequest {
	
	NSMutableDictionary *params = [NSMutableDictionary dictionary];
	
	[params setValue:itemsGetRequest.q forKey:Q];
	[params setValue:itemsGetRequest.fields forKey:FIELDS];
	[params setValue:[NSString stringWithFormat:@"%d",itemsGetRequest.page_no] forKey:PAGE_NO];
	[params setValue:[NSString stringWithFormat:@"%d",itemsGetRequest.page_size] forKey:TAOBAO_PAGE_SIZE];
	
	[fetch fetchWithUrl:serviceUrl andPayload:[self getTemplateRequest:[TaobaoApiMethod ITEMS_GET].method andParams:params] 
			  andMethod:[TaobaoApiMethod ITEMS_GET].method andSelector:@selector(itemsGetProcess:)];
}

-(void)itemsGetProcess:(NSData *)data {
	NSLog(@"itemsGetProcess");
	NSString *json_string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	UrlResponse *response = [[UrlResponse alloc] init];
	response.body = json_string;
	//NSLog(@"json_string = %@", json_string);
	[json_string release];

	ItemsGetResponse *itemsGetResponse = [[ItemsGetResponse alloc] initWithRsp:response];
	if ([itemsGetResponse isSuccess]) {
		JSONObject *json = [[JSONObject alloc] initWithString:response.body];
		[response release];
		[self parseError:itemsGetResponse andJSONObject:json];
		if ([itemsGetResponse isSuccess]) {
			JSONObject *rsp = [json getJSONObject:RSP];
			[json release];
			if ([rsp has:ITEMS]) {
				JSONArray *items = [rsp getJSONArray:ITEMS];
				itemsGetResponse.items = [TaobaoItemJSONConvert convertJsonArrayToItemList:items];
			}
			[self setTotalResults:rsp andListUrlResponse:itemsGetResponse];
			[rsp release];
			
			if ((delegate != nil) && [delegate respondsToSelector:@selector(itemsGetSucceeded:)]) {
				[delegate itemsGetSucceeded:itemsGetResponse];
			}
		} else {
			/*items get failed*/
			if ((delegate != nil) && [delegate respondsToSelector:@selector(itemsGetFailed:)]) {
				[delegate itemsGetFailed:itemsGetResponse];
			}
		}
	}
	[itemsGetResponse release];

}

-(void)dealloc {
	[appkey release];
	[secret release];
	[serviceUrl release];
	[v release];
	[fetch release];
	[super dealloc];
}

@end
