//
//  TaobaoViewController.m
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-10.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "TaobaoViewController.h"
#import "ItemsGetRequest.h"
#import "ItemsGetResponse.h"


@interface TaobaoViewController(PrivateMethods)
-(void)itemsGetButtonPressed:(id)sender;
@end

@implementation TaobaoViewController

@synthesize itemsGetButton;
@synthesize taobaoClient;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

-(id)init {
	if (self = [super init]) {
		//init taobao client
		TaobaoJsonRestClient *aClient = [[TaobaoJsonRestClient alloc] initWithAppkey:@"26780" andSecret:@"a59579203ba611de8795cce12ee7e94a"];
		/*
		TaobaoJsonRestClient *aClient = [[TaobaoJsonRestClient alloc] initWithServiceUrl:@"http://gw.api.tbsandbox.com/router/rest" 
																			   andAppkey:@"26780" andSecret:@"a59579203ba611de8795cce12ee7e94a"];*/
		
		
		//TaobaoJsonRestClient *aClient = [[TaobaoJsonRestClient alloc] initWithServiceUrl:@"http://gw.api.tbsandbox.com/router/rest" andAppkey:@"12021683" andSecret:@"4aa39db88953cf53e9c585a7900d46cf"];
		self.taobaoClient = aClient;
		taobaoClient.delegate = self;
		[aClient release];
	}
	return self;
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	UIView *aView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	self.view = aView;
	[aView release];
	
	//create itemsGetButton
	self.itemsGetButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	itemsGetButton.frame = CGRectMake(20.0, 20.0, 100.0, 40.0);
	itemsGetButton.backgroundColor = [UIColor clearColor];
	[itemsGetButton setTitle:@"itemsGet" forState:UIControlStateNormal];
	[itemsGetButton addTarget:self action:@selector(itemsGetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:itemsGetButton];
	
	
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}
/*
- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	
}*/

-(void)itemsGetButtonPressed:(id)sender {
	NSLog(@"itemsGetButtonPressed");
	ItemsGetRequest *req = [[ItemsGetRequest alloc] init];
	req.q = @"nokia";
	req.fields = @"title,nick";
	req.page_no = 1;
	req.page_size = 2;
	[taobaoClient itemsGet:req];
	[req release];
}

-(void)itemsGetSucceeded:(ItemsGetResponse *)itemsGetResponse {
	NSLog(@"items get succeeded");
	

	//NSLog(@"%@",itemsGetResponse.items);
}

-(void)itemsGetFailed:(ItemsGetResponse *)itemsGetResponse {
	NSLog(@"items get failed!");
}

- (void)dealloc {
	[itemsGetButton release];
	[taobaoClient release];
    [super dealloc];
}


@end
