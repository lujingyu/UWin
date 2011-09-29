//
//  SinaUser.h
//  Share
//
//  Created by jingyu lu on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SinaUser : NSObject {
/*
	 字段说明 - user
	 id: 用户UID
	 screen_name: 微博昵称
	 name: 友好显示名称，同微博昵称
	 province: 省份编码（参考省份编码表）
	 city: 城市编码（参考城市编码表）
	 location：地址
	 description: 个人描述
	 url: 用户博客地址
	 profile_image_url: 自定义图像
	 domain: 用户个性化URL
	 gender: 性别,m--男，f--女,n--未知
	 followers_count: 粉丝数
	 friends_count: 关注数
	 statuses_count: 微博数
	 favourites_count: 收藏数
	 created_at: 创建时间
	 following: 是否已关注(此特性暂不支持)
	 verified: 加V标示，是否微博认证用户
*/
	NSString *userId;
	NSString *screen_name;
	NSString *name;
	NSString *province;
	NSString *city;
	NSString *location;
	NSString *description;
	NSString *url;
	NSString *profile_image_url;
	NSString *domain;
	NSString *gender;
	NSString *followers_count;
	NSString *friends_count;
	NSString *statuses_count;
	NSString *favourites_count;
	NSString *created_at;
	NSString *following;
	NSString *verified;
}

@property (nonatomic, retain) NSString *userId;
@property (nonatomic, retain) NSString *screen_name;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *province;
@property (nonatomic, retain) NSString *city;
@property (nonatomic, retain) NSString *location;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *url;
@property (nonatomic, retain) NSString *profile_image_url;
@property (nonatomic, retain) NSString *domain;
@property (nonatomic, retain) NSString *gender;
@property (nonatomic, retain) NSString *followers_count;
@property (nonatomic, retain) NSString *friends_count;
@property (nonatomic, retain) NSString *statuses_count;
@property (nonatomic, retain) NSString *favourites_count;
@property (nonatomic, retain) NSString *created_at;
@property (nonatomic, retain) NSString *following;
@property (nonatomic, retain) NSString *verified;


@end
