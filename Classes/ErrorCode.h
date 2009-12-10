@interface ErrorCode:NSObject {
    NSInteger code;
    NSString  *msg;
}

@property  NSInteger      code;
@property(nonatomic, retain) NSString       *msg;

-(ErrorCode *) initWithCode: (NSInteger)code andMsg: (NSString *)msg;
+(ErrorCode *) UPLOAD_FAIL;

@end
