//
//  At.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface At : NSObject {

	int         atId;          // 索引id
	User       *member;        // 发表@的用户
	User       *atMember;      // 接受@的用户
	User       *source;        // 来源
	NSString   *content;       // 内容
	NSString   *source_type;   // 来源类型
}

@property (nonatomic, assign)  int         atId;
@property (nonatomic, retain)  User       *member;
@property (nonatomic, retain)  User       *atMember;
@property (nonatomic, retain)  User       *source;
@property (nonatomic, retain)  NSString   *content;
@property (nonatomic, retain)  NSString   *source_type;

@end
