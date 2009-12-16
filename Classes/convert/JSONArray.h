#import "JSONObject.h"

@class JSONObject;

@interface JSONArray:NSObject {
NSArray *array;
}
@property (retain) NSArray *array;

-(JSONArray *)init;
-(JSONArray *)initWithString:(NSString *)string;
-(JSONArray *)initWithArray: (NSArray *)newArray;
-(JSONArray *)initWithJSONArray:(JSONArray *)jsonArray;
-(NSUInteger)length;
-(JSONObject *)getJSONObject:(NSUInteger)index;

@end