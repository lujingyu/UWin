//
//  Shop.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Shop : NSObject {

	int         shopId;       // 店铺索引
	NSString   *shopName;     // 店铺名称
	NSString   *shopInfo;     // 店铺简介
	NSString   *imgPath;      // 店铺图片
	NSString   *shopAddress;  // 店铺地址
	NSString   *shopPhone;    // 联系电话
}

@property (nonatomic, assign)  int         shopId;
@property (nonatomic, retain)  NSString   *shopName;
@property (nonatomic, retain)  NSString   *shopInfo;
@property (nonatomic, retain)  NSString   *imgPath;
@property (nonatomic, retain)  NSString   *shopAddress;
@property (nonatomic, retain)  NSString   *shopPhone;

@end
