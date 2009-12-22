//
//  NSDictionaryUtil.h
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-22.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary(Utilities)
-(BOOL)has:(NSString *)key;
-(NSString *)getString:(NSString *)key;
-(NSDictionary *)getDictionary:(NSString *)key;
-(NSArray *) getArray:(NSString *)key;
@end
