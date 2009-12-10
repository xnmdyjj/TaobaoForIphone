#import "ItemsGetResponse.h";

@implementation ItemsGetResponse

@synthesize items;

-(id)initWithRsp: (UrlResponse *)rsp {
    self = [super initWithRsp:rsp];
    return self;
}

-(void)dealloc {
	[items release];
	[super dealloc];
}
@end
