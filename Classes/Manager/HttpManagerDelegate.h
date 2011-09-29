//
//  HttpManagerDelegate.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
	kRequestLogin,
	kRequestRegister
}Identifier;

@protocol HttpManagerDelegate<NSObject>

- (void)onLoginResponse:(Identifier)identifier response:(NSString *)responseString userInfo:(NSDictionary *)userInfo;
- (void)onRegisterResponse:(Identifier)identifier response:(NSString *)responseString userInfo:(NSDictionary *)userInfo;

@end
