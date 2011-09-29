//
//  SinaWeiboManager.m
//  Jmportal
//
//  Created by jingyu lu on 9/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SinaWeiboManager.h"

static SinaWeiboManager *instance = nil;

@implementation SinaWeiboManager
@synthesize delegate;
@synthesize weiboClient;

+ (SinaWeiboManager *)sharedInstance {
	@synchronized(self) {
		if (nil == instance) {
			instance = [[SinaWeiboManager alloc] init];
		}
	}
	return instance;
}

- (id)init {
	if (self = [super init]) {
		_engine = [OAuthEngine currentOAuthEngine];
		if (!_engine) {
			_engine = [[OAuthEngine alloc] initOAuthWithDelegate:self];
			_engine.consumerKey = SINA_APP_KEY;
			_engine.consumerSecret = SINA_APP_SECRET;
		}
	}
	return self;
}

- (void)dealloc {
	delegate = nil;
	[weiboClient release];
	[_engine release];
	[super dealloc];
}

- (UIViewController *)tryLogin {
	UIViewController *controller = [OAuthController controllerToEnterCredentialsWithEngine:_engine delegate:self];
//	[controller retain];
	if (controller) {
		// 未绑定
	}
	else {
		[OAuthEngine setCurrentOAuthEngine:_engine];
		// 已经绑定
	}
	return controller;
}

- (void)logout {
	[_engine clearAccessToken];
	[_engine signOut];
}

- (void)initWeiboClient {
	if (weiboClient) { 
		return;
	}
	self.weiboClient = [[WeiboClient alloc] initWithTarget:self 
											   engine:_engine
											   action:@selector(timelineDidReceive:obj:)];
}

//=============================================================================================================================
#pragma mark OAuthEngineDelegate
- (void)storeCachedOAuthData:(NSString *)data forUsername:(NSString *)username {
	NSUserDefaults	*defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject: data forKey: @"authData"];
	[defaults synchronize];
}

- (NSString *)cachedOAuthDataForUsername:(NSString *)username {
	NSString *result = [[NSUserDefaults standardUserDefaults] objectForKey:@"authData"];
	return result;
}

- (void)removeCachedOAuthDataForUsername:(NSString *)username{
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	[defaults removeObjectForKey: @"authData"];
	[defaults synchronize];
}

//=============================================================================================================================
#pragma mark OAuthSinaWeiboControllerDelegate

- (void) OAuthController: (OAuthController *) controller authenticatedWithUsername: (NSString *) username {
#ifdef DEBUG
	NSLog(@"Authenicated for %@", username);
#endif	
//	[self initWeiboClient];
	if (delegate && [delegate respondsToSelector:@selector(sinaOAuthController:authenticatedWithUsername:)]) {
		[delegate sinaOAuthController:controller authenticatedWithUsername:username];
	}
}

- (void) OAuthControllerFailed: (OAuthController *) controller {
#ifdef DEBUG	
	NSLog(@"Authentication Failed!");
#endif	
	if (delegate && [delegate respondsToSelector:@selector(sinaOAuthControllerFailed:)]) {
		[delegate sinaOAuthControllerFailed:controller];
	}
}

- (void) OAuthControllerCanceled: (OAuthController *) controller {
#ifdef DEBUG	
	NSLog(@"Authentication Canceled.");
#endif
	if (delegate && [delegate respondsToSelector:@selector(sinaOAuthControllerCanceled:)]) {
		[delegate sinaOAuthControllerCanceled:controller];
	}
}

#pragma mark -
#pragma mark SinaWeibo Request

- (void)sendTweetRequest:(NSDictionary *)_dict withRequestType:(NSString *)_type {
	if (!weiboClient) {
		[self initWeiboClient];
	}
	[weiboClient retain];
	weiboClient.requestType = _type;
	NSString *text = [_dict objectForKey:@"tweet"];
	[weiboClient post:text];
}

- (void)sendPostImageRequest:(NSDictionary *)_dict withRequestType:(NSString *)_type {
	if (!weiboClient) {
		[self initWeiboClient];
	}
	[weiboClient retain];
	weiboClient.requestType = _type;
	NSString *tweet = [_dict objectForKey:@"tweet"];
	NSData   *imgData = [_dict objectForKey:@"image"];
	[weiboClient upload:imgData status:tweet];
}

#pragma mark -
#pragma mark SinaWeibo Response

- (void)callBack:(NSObject *)_para requestIdentifier:(NSString *)_type {
	[[NSNotificationCenter defaultCenter] postNotificationName:_type object:_para userInfo:nil];
}

- (void)postTweetReceived:(NSObject *)_para withRequestType:(NSString *)_type {
	NSDictionary *parsedData = (NSDictionary *)_para;
	[self callBack:parsedData requestIdentifier:_type];
}

- (void)postImageTweetReceived:(NSObject *)_para withRequestType:(NSString *)_type {
	NSDictionary *paresdData = (NSDictionary *)_para;
	[self callBack:paresdData requestIdentifier:_type];
}

- (void)timelineDidReceive:(WeiboClient*)sender obj:(NSObject*)obj {
	if ([sender.requestType isEqualToString:WEIBO_REQUEST_POST_TWEET]) {
		[self postTweetReceived:obj withRequestType:sender.requestType];
	}	
	else if ([sender.requestType isEqualToString:WEIBO_REQUEST_POST_IMAGE_TWEET]) {
		[self postImageTweetReceived:obj withRequestType:sender.requestType];
	}
}

@end
