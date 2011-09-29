//
//  HttpManager.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HttpManager.h"
#import "Constant.h"
#import "ASIHttpHeaders.h"

@implementation HttpManager

@synthesize operationQueue;
@synthesize delegate;

- (id)init {
	if (self = [super init]) {
		NSOperationQueue  *queue = [[NSOperationQueue alloc] init];
		self.operationQueue = queue;
		[queue release];
	}
	return self;
}

- (void)dealloc {
	[operationQueue cancelAllOperations];
	[operationQueue release];
	[super dealloc];
}

- (NSURL *)requestURL:(NSString *)string {
	NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@%@", @"http://www.uwin.cc", @"/uwin/mobile", string]];
	return url;
}

- (void)requestLogin:(Identifier)identifier para:(NSDictionary *)para userInfo:(NSDictionary *)userInfo {
	NSURL *url = [self requestURL:@"/user/login"];
	
	NSString *userName = [para objectForKey:@"userName"];
	NSString *password = [para objectForKey:@"password"];
	
	ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
	[request setPostValue:userName forKey:@"userName"];
	[request setPostValue:password forKey:@"password"];
	[request setUserInfo:userInfo];
	[request setTag:identifier];
	[request setDelegate:self];
	[self.operationQueue addOperation:request];
}

- (void)requestLogin:(Identifier)identifier para:(NSDictionary *)para userInfo:(NSDictionary *)userInfo {
	NSURL *url = [self requestURL:@"/user/register"];
	
	NSString *nickName = [para objectForKey:@"nickName"];
	NSString *email = [para objectForKey:@"email"];
	NSString *password = [para objectForKey:@"password"];
	
	ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
	[request setPostValue:userName forKey:@"userName"];
	[request setPostValue:password forKey:@"password"];
	[request setUserInfo:userInfo];
	[request setTag:identifier];
	[request setDelegate:self];
	[self.operationQueue addOperation:request];
}

#pragma mark -
#pragma mark ASIHTTPRequestDelegate

- (void)requestFinished:(ASIHTTPRequest *)request {
	
	NSString *responseString = [request responseString];
	NSDictionary *userInfo = [request userInfo];
	Identifier identifier = request.tag;
	
	NSLog(@"%@", responseString);
	
	switch (identifier) {
		case kRequestLogin: {
			if (delegate && [delegate respondsToSelector:@selector(onLoginResponse:response:userInfo:)]) {
				[delegate onLoginResponse:identifier response:responseString userInfo:userInfo];
			}
		}
			break;
		case kRequestRegister: {
			if (delegate && [delegate respondsToSelector:@selector(onRegisterResponse:response:userInfo:)]) {
				[delegate onRegisterResponse:identifier response:responseString userInfo:userInfo];
			}
		}
			break;
		default:
			break;
	}
}

- (void)requestFailed:(ASIHTTPRequest *)request {
	
}
@end
