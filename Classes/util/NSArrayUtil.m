//
//  NSArrayUtil.m
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "NSArrayUtil.h"


@implementation NSArray(Utilities)

-(NSUInteger)length {
	return [self count];	
}

-(NSDictionary *)getDictionary:(NSUInteger)index {
	NSDictionary *dictionaryAtIndex = [NSDictionary dictionaryWithDictionary:[self objectAtIndex:index]];
	return dictionaryAtIndex;
}

@end
