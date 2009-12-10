//
//  TaobaoViewController.h
//  TaobaoForIphone
//
//  Created by cybercom on 09-12-10.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TaobaoJsonRestClient.h"
#import "TaobaoJsonRestClientDelegate.h"


@interface TaobaoViewController : UIViewController <TaobaoJsonRestClientDelegate>{
	UIButton *itemsGetButton;
	TaobaoJsonRestClient *taobaoClient;
	
}

@property (nonatomic,retain) UIButton *itemsGetButton;
@property (nonatomic, retain)TaobaoJsonRestClient *taobaoClient;
-(id)init;
@end
