#import "ItemsGetRequest.h"

@implementation ItemsGetRequest

@synthesize q;
@synthesize fields;
@synthesize page_no;
@synthesize page_size;


-(id) init {
	if (self = [super init]) {
		/*init code*/
		self.q = nil;
		self.fields = nil;
	}
	return self;
}

-(void)dealloc {
	[q release];
	[fields release];
	[super dealloc];
}

@end
