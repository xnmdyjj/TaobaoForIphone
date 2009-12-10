#import "TaobaoPublicApi.h"
#import "TaobaoPrivateApi.h"
#import "ItemsGetRequest.h"

@protocol TaobaoRestClient <TaobaoPublicApi,TaobaoPrivateApi>

-(void)itemsGet:(ItemsGetRequest *)itemsGetRequest;

@end
