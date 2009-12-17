#import "TaobaoModel.h"
@interface Item:TaobaoModel {

NSString *iid;
NSString *title;
NSString *nick;
NSString *type;
NSString *cid;

}

-(id)init;

@property (retain) NSString *iid;
@property (retain) NSString *title;
@property (retain) NSString *nick;
@property (retain) NSString *type;
@property (retain) NSString *cid;

@end