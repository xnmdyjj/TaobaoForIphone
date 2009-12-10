extern NSString *const ANON;

@interface TaobaoModel:NSObject {
 NSMutableArray *anons;
}

@property (retain) NSMutableArray *anons;

-(void)addAnon:(id)anon;

@end