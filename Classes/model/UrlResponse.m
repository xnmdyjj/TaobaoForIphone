#import "UrlResponse.h"

@implementation UrlResponse

@synthesize errorCode;
@synthesize body;
@synthesize msg;
@synthesize redirectUrl;

-(id)init {
	if (self = [super init]) {
		self.errorCode = nil;
		self.body = nil;
		self.msg = nil;
		self.redirectUrl = nil;
	}
	return self;
}

-(id)initWithBody: (NSString *)newBody andErrorCode:(NSString *)newErrorCode andMsg:(NSString *)newMsg andRedirectUrl:(NSString *)newRedirectUrl {
	if (self = [super init]) {
		[self setBody:newBody andErrorCode:newErrorCode andMsg:newMsg andRedirectUrl:newRedirectUrl];
	}
	return self;
}

-(void)setBody:(NSString *)newBody andErrorCode:(NSString *)newErrorCode andMsg:(NSString *)newMsg andRedirectUrl:(NSString *)newRedirectUrl {
	self.body = newBody;
	self.errorCode = newErrorCode;
	self.msg = newMsg;
	self.redirectUrl = newRedirectUrl;
}

-(id)initWithRsp: (UrlResponse *)rsp {
	
	if (self = [super init]) {
		[self setBody:rsp.body andErrorCode:rsp.errorCode andMsg:rsp.msg andRedirectUrl:rsp.redirectUrl];
	}
	return self;
}

-(BOOL) isSuccess {
	return errorCode == nil;
}

-(BOOL) isRedirect {
	return redirectUrl != nil;
}

-(void)dealloc {
	[body release];
	[errorCode release];
	[msg release];
	[redirectUrl release];
	[super dealloc];
}

@end