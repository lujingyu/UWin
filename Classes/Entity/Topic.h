//
//  Topic.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Brand.h"
#import "Shop.h"

@interface Topic : NSObject {

	int         topicId;        // 文章索引
	NSString   *title;          // 标题
	NSString   *content;        // 内容简介
	NSString   *imgPath;        // 图片
	User       *member;         // 上传人
	Brand      *brand;          // 品牌
	Shop       *shop;           // 店铺
	NSString   *addTimeString;  // 上传时间
	int         praiseCount;    // “赞”的数量
	int         commentCount;   // 评论的数量
	double      price;          // 价格
}

@property (nonatomic, assign)  int          topicId;
@property (nonatomic, retain)  NSString    *title;
@property (nonatomic, retain)  NSString    *content;
@property (nonatomic, retain)  NSString    *imgPath;
@property (nonatomic, retain)  User        *member;
@property (nonatomic, retain)  Brand       *brand;
@property (nonatomic, retain)  Shop        *shop;
@property (nonatomic, retain)  NSString    *addTimeString;
@property (nonatomic, assign)  int          praiseCount;
@property (nonatomic, assign)  int          commentCount;
@property (nonatomic, assign)  double       price;

@end
