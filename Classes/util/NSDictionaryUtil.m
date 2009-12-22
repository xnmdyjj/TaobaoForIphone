//
//  NSDictionaryUtil.m
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "NSDictionaryUtil.h"

@implementation NSDictionary(Utilities)


-(BOOL)has:(NSString *)key {
	if ([self valueForKey:key])
		return YES;
	return NO;
}

-(NSString *)getString:(NSString *)key {
	NSString *stringForKey;
	if ([[self valueForKey:key] isKindOfClass:[NSNumber class]]){
		NSNumber *numberValue =[self valueForKey:key];
		stringForKey = [NSString stringWithString:numberValue.stringValue];
	}
	else {
		stringForKey = [NSString stringWithFormat:@"%@", [self valueForKey:key]];
	}
	return stringForKey; 
}

-(NSDictionary *)getDictionary:(NSString *)key {
	NSDictionary *dictionaryForKey = [NSDictionary dictionaryWithDictionary:[self valueForKey:key]];
	return dictionaryForKey;
}

-(NSArray *) getArray:(NSString *)key {
	NSArray *arrayForKey = [NSArray arrayWithArray:[self valueForKey:key]];
	return arrayForKey;
}

@end
