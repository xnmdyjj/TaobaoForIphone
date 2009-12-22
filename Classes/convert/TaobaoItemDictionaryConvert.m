//
//  TaobaoItemDictionaryConvert.m
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "TaobaoItemDictionaryConvert.h"
#import "ApiConstants.h"
#import "Item.h"
#import "NSDictionaryUtil.h"
#import "NSArrayUtil.h"

@implementation TaobaoItemDictionaryConvert

+ (Item *)convertDictionaryToItem:(NSDictionary *)dictionary {
	Item *getItem = [[Item alloc] init];
	if ([dictionary has:IID]) {
		getItem.iid = [dictionary getString:IID];
	}
	if ([dictionary has:TITLE]) {
		getItem.title = [dictionary getString:TITLE];
	}
	if ([dictionary has:NICK]) {
		getItem.nick = [dictionary getString:NICK];
	}
	if ([dictionary has:TYPE]) {
		getItem.type = [dictionary getString:TYPE];
	}
	if ([dictionary has:CID]) {
		getItem.cid = [dictionary getString:CID];
	}
	/*TODO:*/
	[getItem autorelease];
	return getItem;
	
}

+ (NSMutableArray *)convertArrayToItemList:(NSArray *)array {
	NSMutableArray *getItemList = [NSMutableArray array];
	Item *getItem = nil;
	NSUInteger i;
	for (i = 0; i < [array length]; i++) {
		getItem = [TaobaoItemDictionaryConvert convertDictionaryToItem:[array getDictionary:i]];
		[getItemList addObject:getItem];
	}
	return getItemList;
}

@end
