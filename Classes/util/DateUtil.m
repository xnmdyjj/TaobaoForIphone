#import "DateUtil.h"

@implementation DateUtil

+(NSString *)dateToStr:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *stringFromDate = [formatter stringFromDate:date];
    [formatter release];
	NSLog(@"stringDate = %@",stringFromDate);
    return stringFromDate;
}

+(NSDate *)strToDate:(NSString *)dateStr {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [formatter dateFromString:dateStr];
    [formatter release];
    return date;
}

@end
