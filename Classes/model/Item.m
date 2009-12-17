#import "Item.h"

@implementation Item

@synthesize iid;
@synthesize title;
@synthesize nick;
@synthesize type;
@synthesize cid;

-(id)init {
	if (self = [super init]) {
		self.iid = nil;
		self.title = nil;
		self.nick = nil;
		self.type = nil;
		self.cid = nil;
	}
	return self;
}


-(void)dealloc {
	[iid release];
	[title release];
	[nick release];
	[type release];
	[cid release];
	[super dealloc];
}
@end