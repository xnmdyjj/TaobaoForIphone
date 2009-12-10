#import "TaobaoUrlFetch.h"
#import "FetchUtil.h"
#import "ApiConstants.h"

@implementation TaobaoUrlFetch

@synthesize receivedData;
@synthesize delegate;
@synthesize method;
@synthesize methodSelectorDictionary;

-(id)init {
	if (self = [super init]) {
		self.delegate = nil;
		self.method = nil;
		self.methodSelectorDictionary = nil;
	}
	return self;
}


- (void) fetchWithUrl: (NSString *)stringUrl andPayload: (NSMutableDictionary *)payload andMethod:(NSString *)newMethod andSelector:(SEL)process {
    NSURL *url = [NSURL URLWithString:stringUrl];
	NSLog(@"url = %@", stringUrl);
    NSString *buffer = [NSString stringWithString:[FetchUtil paramsToBuffer:payload andDelimiter:@"&" andEquals:@"="]];
	NSLog(@"buffer = %@", buffer);
	NSData *body = [buffer	dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableURLRequest* mutableRequest = [NSMutableURLRequest requestWithURL:url];
    if ([mutableRequest valueForHTTPHeaderField:@"Content-Type"] == nil)
        [mutableRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [mutableRequest setHTTPMethod: @"POST"];
    [mutableRequest setHTTPBody:body];
	[mutableRequest setCachePolicy:NSURLRequestUseProtocolCachePolicy];
	[mutableRequest setTimeoutInterval:60.0];

    NSURLConnection* connection = [NSURLConnection connectionWithRequest: mutableRequest delegate:self];
    if (connection) {
		self.receivedData = [[NSMutableData data] retain];
		self.method = newMethod;
		self.methodSelectorDictionary = [NSMutableDictionary  dictionary];
		[methodSelectorDictionary setValue:NSStringFromSelector(process) forKey:newMethod];
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

    [connection release];

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

	NSString *aStr = [[NSString alloc] initWithData:receivedData encoding:NSASCIIStringEncoding];
    NSLog(@"Succeeded! Received %d bytes of data",[receivedData length]);
	NSLog(@"receivedData = %@", aStr);
	[aStr release];
    
    if ((delegate != nil) && [delegate respondsToSelector:@selector(taobaoUrlFetch:didRetrieveData:)]) {
        [delegate taobaoUrlFetch:self didRetrieveData:receivedData];
    }

    // release the connection, and the data object
    [connection release];
    [receivedData release];
}

- (void)dealloc
{
	[method release];
	[methodSelectorDictionary release];
    [receivedData release];
    [super dealloc];
}
 


@end
