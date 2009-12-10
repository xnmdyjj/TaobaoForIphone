#import "ListUrlResponse.h"

@interface ItemsGetResponse:ListUrlResponse {
NSMutableArray *items;

}
-(id)initWithRsp: (UrlResponse *)rsp;
@property (retain) NSMutableArray *items;
@end
