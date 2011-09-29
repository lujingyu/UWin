//
//  Comment.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Topic.h"

@interface Comment : NSObject {

	int           commentId;   // 评论索引
	NSString     *content;     // 评论内容
	NSString     *addTime;     // 评论时间
	User         *member;      // 评论人
	Topic        *topic;       // 评论文章
}
@property (nonatomic, assign) int         commentId;
@property (nonatomic, retain) NSString   *content;
@property (nonatomic, retain) NSString   *addTime;
@property (nonatomic, retain) User       *member;
@property (nonatomic, retain) Topic      *topic;

@end
