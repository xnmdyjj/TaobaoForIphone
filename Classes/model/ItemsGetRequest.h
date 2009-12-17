@interface ItemsGetRequest:NSObject {
    NSString *q;
	NSString *fields;
	NSUInteger page_no;
	NSUInteger page_size;
	
   /*add instance val*/
}

-(id) init;

@property (retain) NSString *q;
@property (retain) NSString *fields;
@property (assign) NSUInteger page_no;
@property (assign) NSUInteger page_size;


@end
