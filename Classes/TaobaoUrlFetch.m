#import "TaobaoUrlFetch.h"
#import "FetchUtil.h"
#import "ApiConstants.h"

@implementation TaobaoUrlFetch

@synthesize receivedData;
@synthesize taobaoURLConnection;
@synthesize delegate;
@synthesize method;
@synthesize methodSelectorDictionary;

-(id)init {
	if (self = [super init]) {
		self.delegate = nil;
		self.receivedData = nil;
		self.taobaoURLConnection = nil;
		self.method = nil;
		self.methodSelectorDictionary = nil;
	}
	return self;
}


- (void) fetchWithUrl: (NSString *)stringUrl andPayload: (NSMutableDictionary *)payload andMethod:(NSString *)theMethod andSelector:(SEL)process {
    NSLog(@"start url fetch!");
	NSURL *url = [NSURL URLWithString:stringUrl];
    NSString *buffer = [NSString stringWithString:[FetchUtil paramsToBuffer:payload andDelimiter:@"&" andEquals:@"="]];
	NSData *body = [buffer	dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableURLRequest* mutableRequest = [NSMutableURLRequest requestWithURL:url];
    if ([mutableRequest valueForHTTPHeaderField:@"Content-Type"] == nil)
        [mutableRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [mutableRequest setHTTPMethod: @"POST"];
    [mutableRequest setHTTPBody:body];

    NSURLConnection* theConnection = [NSURLConnection connectionWithRequest: mutableRequest delegate:self];
	self.taobaoURLConnection = theConnection;
    if (taobaoURLConnection) {
		receivedData = [[NSMutableData data] retain];
		self.method = theMethod;
		self.methodSelectorDictionary = [NSMutableDictionary  dictionary];
		[methodSelectorDictionary setValue:NSStringFromSelector(process) forKey:theMethod];
    }
    else {
    	NSLog (@"Could not open the connection");
    }
	
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	
    NSLog(@"didReceiveResponse");

    [receivedData setLength:0];

}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
      // append the new data to the receivedData

      // receivedData is declared as a method instance elsewhere
      NSLog(@"didReceiveData");
      [receivedData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error

{
	NSLog(@"connection error");

    // release the connection, and the data object

    [taobaoURLConnection release];

    // receivedData is declared as a method instance elsewhere

    [receivedData release];

          
	if ((delegate != nil) && [delegate respondsToSelector:@selector(taobaourlFetch:didFailWithError:)]) {
	
        [delegate taobaoUrlFetch:self didFailWithError:error];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{

    // do something with the data

    // receivedData is declared as a method instance elsewhere
	NSLog(@"connectionDidFinishLoading");

    if ((delegate != nil) && [delegate respondsToSelector:@selector(taobaoUrlFetch:didRetrieveData:)]) {
        [delegate taobaoUrlFetch:self didRetrieveData:receivedData];
    }
	
	[taobaoURLConnection release];
	[receivedData release];
}

- (void)dealloc
{
	[method release];
	[methodSelectorDictionary release];
    [receivedData release];
	[taobaoURLConnection release];
    [super dealloc];
}
 


@end
