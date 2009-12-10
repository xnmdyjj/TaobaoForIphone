#import "ListUrlResponse.h"

@implementation ListUrlResponse

@synthesize totalResults;

-(id) initWithRsp:(UrlResponse *)rsp {
	self = [super initWithRsp:rsp];
	return self;
}

-(void)dealloc {
	[super dealloc];
}

@end