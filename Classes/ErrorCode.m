#import "ErrorCode.h"


@implementation ErrorCode 

@synthesize code;
@synthesize msg;

-(ErrorCode *) initWithCode: (NSInteger)newCode andMsg: (NSString *)newMsg {

    if (self = [super init]) {
        self.code = newCode;
        self.msg = newMsg;
    }
    return self;
}

+(ErrorCode *)UPLOAD_FAIL {
	static ErrorCode *upload_fail = nil;
	if (upload_fail == nil) {
		upload_fail = [[ErrorCode alloc] initWithCode:3 andMsg:@"Upload fail"];
	}
	[upload_fail autorelease];
	return upload_fail;
}

-(void) dealloc {
	[msg release];
	[super dealloc];
}
@end

