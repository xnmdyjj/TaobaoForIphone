@interface UrlResponse:NSObject {
NSString *errorCode;
NSString *msg;
NSString *redirectUrl;
NSString *body;
}
@property (retain)  NSString* errorCode;
@property (retain)  NSString* msg;
@property (retain)  NSString* redirectUrl;
@property (retain)  NSString* body;

-(id)init;
-(id)initWithBody: (NSString *)newBody andErrorCode:(NSString *)newErrorCode andMsg:(NSString *)newMsg andRedirectUrl:(NSString *)newRedirectUrl;
-(void)setBody:(NSString *)newBody andErrorCode:(NSString *)newErrorCode andMsg:(NSString *)newMsg andRedirectUrl:(NSString *)newRedirectUrl;
-(id)initWithRsp: (UrlResponse *)rsp;
-(BOOL) isSuccess;
-(BOOL) isRedirect;

@end