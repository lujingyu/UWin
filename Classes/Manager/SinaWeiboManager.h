//
//  SinaWeiboManager.h
//  Jmportal
//
//  Created by jingyu lu on 9/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OAuthController.h"
#import "WeiboClient.h"

// 新浪微博 identifier
#define WEIBO_REQUEST_POST_TWEET             @"Request_Post_Tweet"
#define WEIBO_REQUEST_POST_IMAGE_TWEET       @"Request_Post_Image_Tweet"

#define SINA_APP_KEY           @""
#define SINA_APP_SECRET        @""
@protocol SinaWeiboManagerDelegate<NSObject>

- (void)sinaOAuthController:(OAuthController *)controller authenticatedWithUsername:(NSString *)username;
- (void)sinaOAuthControllerFailed:(OAuthController *)controller;
- (void)sinaOAuthControllerCanceled:(OAuthController *)controller;

@end

@class OAuthEngine;
@interface SinaWeiboManager : NSObject <OAuthControllerDelegate>{

	OAuthEngine                     *_engine;
	WeiboClient                     *weiboClient;
	id<SinaWeiboManagerDelegate>    delegate;
}

@property (nonatomic, assign) id<SinaWeiboManagerDelegate> delegate;
@property (nonatomic, retain) WeiboClient  *weiboClient;

+ (SinaWeiboManager *)sharedInstance;
- (UIViewController *)tryLogin;
- (void)logout;
- (void)sendTweetRequest:(NSDictionary *)_dict withRequestType:(NSString *)_type;
- (void)sendPostImageRequest:(NSDictionary *)_dict withRequestType:(NSString *)_type;

@end
