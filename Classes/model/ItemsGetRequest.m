#import "ItemsGetRequest.h"

@implementation ItemsGetRequest

@synthesize q;
@synthesize startPrice;
@synthesize endPrice;
@synthesize cid;
@synthesize page_no;
@synthesize page_size;
@synthesize orderBy;
@synthesize fields;
@synthesize nicks;
@synthesize props;
@synthesize productId;
@synthesize wwStatus;
@synthesize postFree;
@synthesize state;
@synthesize city;


-(void)dealloc {
	[q release];
	[startPrice release];
	[endPrice release];
	[cid release];
	[orderBy release];
	[fields release];
	[nicks release];
	[props release];
	[productId release];
	[state release];
	[city release];
	[super dealloc];
}

@end
