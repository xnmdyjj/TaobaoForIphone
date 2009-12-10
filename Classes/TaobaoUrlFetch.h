#import "TaobaoUrlFetchDelegate.h"

@interface TaobaoUrlFetch:NSObject {

NSMutableData *receivedData;
id<TaobaoUrlFetchDelegate> delegate;
NSString *method;
NSMutableDictionary *methodSelectorDictionary;

}

-(void)fetchWithUrl:(NSString *)stringUrl andPayload:(NSMutableDictionary *)payload andMethod:(NSString *)newMethod andSelector:(SEL)process;

@property (nonatomic, assign) id<TaobaoUrlFetchDelegate> delegate;
@property (nonatomic, retain) NSMutableData *receivedData;
@property (nonatomic, retain) NSString *method;
@property (nonatomic,retain) NSMutableDictionary *methodSelectorDictionary;

@end
