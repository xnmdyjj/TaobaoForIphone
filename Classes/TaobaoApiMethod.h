@interface TaobaoApiMethod:NSObject {
	NSString *method;
}

@property (retain) NSString *method;
-(TaobaoApiMethod *)initWithMethod:(NSString *)newMethod;
+(TaobaoApiMethod *)ITEMS_GET;

@end