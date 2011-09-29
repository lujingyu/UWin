//
//  User.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface User : NSObject {

	int         userId;            // 用户索引id
	NSString   *userName;          // 注册邮箱（登录名）
	NSString   *nickName;          // 昵称（用户名）
	NSString   *password;          // 密码
	NSString   *imgPath;           // 头像路径
}

@property (nonatomic, assign) int         userId;
@property (nonatomic, retain) NSString   *userName;
@property (nonatomic, retain) NSString   *nickName;
@property (nonatomic, retain) NSString   *password;
@property (nonatomic, retain) NSString   *imgPath;

@end
