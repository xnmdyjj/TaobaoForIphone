#import "ItemsGetResponse.h"

@protocol TaobaoJsonRestClientDelegate<NSObject>

@optional

-(void)itemsGetSucceeded:(ItemsGetResponse *)itemsGetResponse;
-(void)itemsGetFailed:(ItemsGetResponse *)itemsGetResponse;
-(void)connectionError:(NSError *) error;
@end