//
//  TaobaoForIphoneAppDelegate.h
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-10.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaobaoViewController.h"

@interface TaobaoForIphoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	TaobaoViewController *taobaoController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) TaobaoViewController *taobaoController;

@end

