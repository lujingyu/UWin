//
//  DataManager.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DataManager.h"
#import "JSON.h"

@implementation DataManager


- (id)init {
	if (self = [super init]) {
		httpManager = [[HttpManager alloc] init];
		httpManager.delegate = self;
	}
	return self;
}

- (void)dealloc {
	[httpManager release];
	[super dealloc];
}


- (void)onLoginResponse:(Identifier)identifier response:(NSString *)responseString userInfo:(NSDictionary *)userInfo {
	
}

- (void)onRegisterResponse:(Identifier)identifier response:(NSString *)responseString userInfo:(NSDictionary *)userInfo {
	
}


@end
