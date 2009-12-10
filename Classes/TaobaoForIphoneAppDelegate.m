//
//  TaobaoForIphoneAppDelegate.m
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-10.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TaobaoForIphoneAppDelegate.h"

@implementation TaobaoForIphoneAppDelegate

@synthesize window;
@synthesize taobaoController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	TaobaoViewController *aController = [[TaobaoViewController alloc] init];
	self.taobaoController = aController;
	[aController release];
	[window addSubview:taobaoController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[taobaoController release];
    [window release];
    [super dealloc];
}


@end
