//
//  Attention.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Attention : NSObject {

	int         attentionId;     // 索引id
	User       *member;          // 关注人
	User       *receiveMember;   // 被关注人
	NSString   *addTime;         // 关注时间
}

@property (nonatomic, assign)   int         attentionId;
@property (nonatomic, retain)   User       *member;
@property (nonatomic, retain)   User       *receiveMember;
@property (nonatomic, retain)   NSString   *addTime;

@end
