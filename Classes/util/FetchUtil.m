#import "FetchUtil.h"

@implementation FetchUtil

+(NSString *) paramsToBuffer:(NSMutableDictionary *)entries andDelimiter:(NSString *)delimiter andEquals:(NSString *)equals {
	if (entries == nil || [entries count] == 0) {
		return nil;
	}
	
	NSMutableString *buffer = [NSMutableString string];
	BOOL notFirst = NO;
	for (NSString *key in entries) {
		if (notFirst) {
			[buffer appendString:delimiter];
		}
		else {
			notFirst = YES;
		}
		[buffer appendString:key];
		[buffer appendString:equals];
		[buffer appendString:[entries valueForKey:key]];
	}
	return buffer;
}

@end
