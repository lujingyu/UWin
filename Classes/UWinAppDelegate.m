//
//  UWinAppDelegate.m
//  UWin
//
//  Created by jingyu lu on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UWinAppDelegate.h"
#import "HomePageViewController.h"
#import "RecommendViewController.h"
#import "ShotViewController.h"
#import "SubscribeViewController.h"
#import "AccountViewController.h"
#import "LoginViewController.h"

@implementation UWinAppDelegate
@synthesize tabBarController;

@synthesize window;

- (void)initTabBar {
	NSMutableArray *controllers = [[NSMutableArray alloc] initWithCapacity:0];
	
	HomePageViewController *homeController = [[HomePageViewController alloc] init];
	UINavigationController *homeNavController = [[UINavigationController alloc] initWithRootViewController:homeController];
	[homeController release];
	[controllers addObject:homeNavController];
	[homeNavController release];
	
	RecommendViewController *recommendController = [[RecommendViewController alloc] init];
	UINavigationController *recommendNavController = [[UINavigationController alloc] initWithRootViewController:recommendController];
	[recommendController release];
	[controllers addObject:recommendNavController];
	[recommendNavController release];
	
	ShotViewController *shotController = [[ShotViewController alloc] init];
	UINavigationController *shotNavController = [[UINavigationController alloc] initWithRootViewController:shotController];
	[shotController release];
	[controllers addObject:shotNavController];
	[shotNavController release];
	
	SubscribeViewController *subscribeController = [[SubscribeViewController alloc] init];
	UINavigationController *subscribeNavController = [[UINavigationController alloc] initWithRootViewController:subscribeController];
	[subscribeController release];
	[controllers addObject:subscribeNavController];
	[subscribeNavController release];
	
	AccountViewController *accountController = [[AccountViewController alloc] init];
	UINavigationController *accountNavController = [[UINavigationController alloc] initWithRootViewController:accountController];
	[controllers addObject:accountNavController];
	[accountNavController release];
	
	// add navigationControllers to tabBarController
	UITabBarController *tabBar = [[UITabBarController alloc] init];
	tabBar.delegate = self;
	tabBar.viewControllers = controllers;
	[controllers release];
	self.tabBarController = tabBar;
	[tabBar release];
	
	[[self.tabBarController.tabBar.items objectAtIndex:0] setTitle:@"首页"];
	[[self.tabBarController.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"home.png"]];
	
	[[self.tabBarController.tabBar.items objectAtIndex:1] setTitle:@"推荐"];
	[[self.tabBarController.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"recommend.png"]];
	
	[[self.tabBarController.tabBar.items objectAtIndex:2] setTitle:@"拍照"];
	[[self.tabBarController.tabBar.items objectAtIndex:2] setImage:[UIImage imageNamed:@"shot.png"]];
	
	[[self.tabBarController.tabBar.items objectAtIndex:3] setTitle:@"订阅"];
	[[self.tabBarController.tabBar.items objectAtIndex:3] setImage:[UIImage imageNamed:@"subscribe.png"]];
	
	[[self.tabBarController.tabBar.items objectAtIndex:4] setTitle:@"账户"];
	[[self.tabBarController.tabBar.items objectAtIndex:4] setImage:[UIImage imageNamed:@"account.png"]];
	
	[self.window addSubview:self.tabBarController.view];
}


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    [self initTabBar];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[tabBarController release];
    [window release];
    [super dealloc];
}


@end
