#import "TaobaoItemJSONConvert.h"
#import "ApiConstants.h"
#import "Item.h"

@implementation TaobaoItemJSONConvert

+ (Item *)convertJsonToItem:(JSONObject *)json {
	Item *getItem = [[Item alloc] init];
	if ([json has:IID]) {
		getItem.iid = [json getString:IID];
	}
	if ([json has:TITLE]) {
		getItem.title = [json getString:TITLE];
	}
	if ([json has:NICK]) {
		getItem.nick = [json getString:NICK];
	}
	if ([json has:TYPE]) {
		getItem.type = [json getString:TYPE];
	}
	if ([json has:CID]) {
		getItem.cid = [json getString:CID];
	}
	/*TODO:*/
	[getItem autorelease];
	return getItem;
}

+ (NSMutableArray *)convertJsonArrayToItemList:(JSONArray *)theJSONArray {
	NSMutableArray *getItemList = [NSMutableArray array];
	Item *getItem = nil;
	NSUInteger i;
	JSONArray *jsonArray = [[JSONArray alloc] initWithJSONArray:theJSONArray];
	for (i = 0; i < [jsonArray length]; i++) {
		getItem = [TaobaoItemJSONConvert convertJsonToItem:[jsonArray getJSONObject:i]];
		[getItemList addObject:getItem];
	}
	[jsonArray release];
	return getItemList;
}

@end