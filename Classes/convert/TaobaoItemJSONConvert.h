#import "JSONObject.h"
#import "JSONArray.h"
#import "Item.h"

@interface TaobaoItemJSONConvert:NSObject

+ (Item *)convertJsonToItem:(JSONObject *)json;
+ (NSMutableArray *)convertJsonArrayToItemList:(JSONArray *)jsonArray;

@end