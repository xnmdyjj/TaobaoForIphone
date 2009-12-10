#import "JSONArray.h"

@class JSONArray;

@interface JSONObject:NSObject {

NSDictionary *dictionary;

}

@property (retain) NSDictionary *dictionary;

-(JSONObject *)initWithString:(NSString *)string;

-(JSONObject *)initWithJSONObject:(JSONObject *)json;

-(BOOL)has:(NSString *)key;

-(JSONObject *)getJSONObject:(NSString *)key;

-(NSString *)getString:(NSString *)key;

-(JSONArray *)getJSONArray:(NSString *)key;

@end
