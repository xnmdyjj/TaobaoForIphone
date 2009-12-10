#import "ItemsGetRequest.h"

@implementation ItemsGetRequest

@synthesize q;
@synthesize fields;
@synthesize page_no;
@synthesize page_size;

-(void)dealloc {
	[q release];
	[fields release];
	[super dealloc];
}

@end
