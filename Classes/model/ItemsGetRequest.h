@interface ItemsGetRequest:NSObject {
    NSString *q;
	NSString *startPrice;
	NSString *endPrice;
	NSString *cid;
	NSUInteger page_no;
	NSUInteger page_size;
	NSString *orderBy;
	NSString *fields;
	NSString *nicks;
	NSString *props;
	NSString *productId;
	BOOL wwStatus;
	BOOL postFree;
	NSString *state;
	NSString *city;

}

@property (retain) NSString *q;
@property (retain) NSString *startPrice;
@property (retain) NSString *endPrice;
@property (retain) NSString *cid;
@property (assign) NSUInteger page_no;
@property (assign) NSUInteger page_size;
@property (assign) NSString *orderBy;
@property (assign) NSString *fields;
@property (assign) NSString *nicks;
@property (assign) NSString *props;
@property (assign) NSString *productId;
@property (assign) BOOL wwStatus;
@property (assign) BOOL postFree;
@property (retain) NSString *state;
@property (retain) NSString *city;

@end
