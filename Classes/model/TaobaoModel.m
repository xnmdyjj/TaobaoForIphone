#import "TaobaoModel.h"

NSString *const ANON = @"anon";
	
@implementation TaobaoModel

@synthesize anons;
	
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