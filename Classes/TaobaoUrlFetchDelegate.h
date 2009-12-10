@class TaobaoUrlFetch;

@protocol TaobaoUrlFetchDelegate<NSObject>

@required
-(void)taobaoUrlFetch:(TaobaoUrlFetch *)urlFetch didFailWithError:(NSError *)error;
-(void)taobaoUrlFetch:(TaobaoUrlFetch *)urlFetch didRetrieveData:(NSData *)data;

@end
