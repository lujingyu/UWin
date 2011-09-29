//
//  Laud.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Topic.h"

@interface Laud : NSObject {

	int        laudId;     // 索引id
	User      *member;     // 称赞人
	Topic     *topic;      // 称赞资讯
	NSString  *addTime;    // 称赞时间
}
@property (nonatomic, assign)  int         laudId;
@property (nonatomic, retain)  User       *member;
@property (nonatomic, retain)  Topic      *topic;
@property (nonatomic, retain)  NSString   *addTime;

@end
