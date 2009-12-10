#import "TaobaoApiMethod.h"

@implementation TaobaoApiMethod

@synthesize method;

-(TaobaoApiMethod *const)initWithMethod:(NSString *)newMethod {
	if (self = [super init]) {
		self.method = newMethod;
	}
	return self;
}

+(TaobaoApiMethod *)ITEMS_GET {
	static TaobaoApiMethod *items_get = nil;
	if (items_get == nil) {
		items_get = [[TaobaoApiMethod alloc] initWithMethod:@"taobao.items.get"];
	}
	return items_get;
}

@end