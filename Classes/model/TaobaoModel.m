#import "TaobaoModel.h"

NSString *const ANON = @"anon";
	
@implementation TaobaoModel

@synthesize anons;

-(id) init {
	if (self = [super init]) {
		self.anons = nil;
	}
	return self;
}
	
-(void)addAnon:(id)anon {
	if (self.anons == nil) {
		self.anons = [NSMutableArray array];
	}
	[anons addObject:anon];
}

-(void)dealloc {
	
	[anons release];
	[super dealloc];
}

@end