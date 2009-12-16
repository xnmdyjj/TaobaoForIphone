#import "ListUrlResponse.h"

@interface ItemsGetResponse:ListUrlResponse {
NSMutableArray *items;

}
-(id)initWithRsp: (UrlResponse *)rsp;
@property (nonatomic, retain) NSMutableArray *items;
@end
