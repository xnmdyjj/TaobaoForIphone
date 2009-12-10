#import "UrlResponse.h"

@interface ListUrlResponse : UrlResponse {
	NSUInteger  totalResults;
}

@property (assign) NSUInteger totalResults;

@end