#import "Item.h"

@implementation Item

@synthesize iid;
@synthesize title;
@synthesize nick;
@synthesize type;
@synthesize cid;

-(void)dealloc {
	[iid release];
	[title release];
	[nick release];
	[type release];
	[cid release];
	[super dealloc];
}
@end