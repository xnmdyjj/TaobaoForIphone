//
//  TaobaoItemDictionaryConvert.h
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface TaobaoItemDictionaryConvert : NSObject 

+(Item *)convertDictionaryToItem:(NSDictionary *)dictionary;
+(NSMutableArray *)convertArrayToItemList:(NSArray *)array;
@end
