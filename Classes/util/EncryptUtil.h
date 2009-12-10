@interface EncryptUtil:NSObject

+(NSString *)uniqueIDFromString:(NSString *)source;
+(NSString *) signatureWithParams:(NSMutableDictionary *)params andSecret:(NSString *)secret andSignName:(NSString *)signName;

@end
