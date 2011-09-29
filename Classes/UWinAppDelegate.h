//
//  UWinAppDelegate.h
//  UWin
//
//  Created by jingyu lu on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UWinAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow              *window;
	UITabBarController    *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow  *window;
@property (nonatomic, retain) UITabBarController *tabBarController;

@end

