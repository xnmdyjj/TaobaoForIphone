#import "TaobaoUrlFetch.h"
#import "TaobaoUrlFetchDelegate.h"
#import "TaobaoRestClient.h"
#import "TaobaoJsonRestClientDelegate.h"
#import "ItemsGetRequest.h"

@interface  TaobaoJsonRestClient :NSObject <TaobaoRestClient, TaobaoUrlFetchDelegate> {
	NSString *appkey;
	NSString *v;
	NSString *secret;
	NSString *serviceUrl;
    TaobaoUrlFetch *fetch;
    id<TaobaoJsonRestClientDelegate> delegate;
}

@property (nonatomic,retain) NSString *appkey;
@property (nonatomic,retain) NSString *v;
@property (nonatomic,retain) NSString *secret;
@property (nonatomic,retain) NSString *serviceUrl;
@property (retain) TaobaoUrlFetch *fetch;
@property (nonatomic, assign) id<TaobaoJsonRestClientDelegate> delegate;

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)appkey andSecret: (NSString *)secret;

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)appkey andSecret: (NSString *)secret andIsSandbox:(BOOL)isSandbox;

-(TaobaoJsonRestClient *) initWithAppkey: (NSString *)appkey andSecret: (NSString *)secret
                                                             andIsSandbox: (BOOL)isSandbox 
	                                                             andSipProtocol: (BOOL)sipProtocol;
	                                                             
-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)serviceUrl
                                                   andAppkey: (NSString *)appkey
	                                                   andSecret: (NSString *)secret;

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)serviceUrl
                                                   andAppkey: (NSString *)appkey
                                                   andSecret: (NSString *)secret 
	                                                   andSipProtocol: (BOOL)sipProtocol;

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)serviceUrl andVersion: (NSString *)version 
                                                   andAppkey: (NSString *)appkey
                                                   andSecret: (NSString *)secret;

-(TaobaoJsonRestClient *) initWithServiceUrl: (NSString *)serviceUrl andVersion: (NSString *)version 
                                                   andAppkey: (NSString *)appkey
                                                   andSecret: (NSString *)secret 
	                                                   andSipProtocol: (BOOL)sipProtocol;
	                                                   
-(void) itemsGet:(ItemsGetRequest *)itemsGetRequest;
                                                  
@end
