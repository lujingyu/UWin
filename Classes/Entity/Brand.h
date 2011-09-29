//
//  Brand.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Brand : NSObject {

	int         brandId;     // 品牌索引
	NSString   *brandName;   // 品牌名称
	NSString   *brandInfo;   // 品牌简介
	NSString   *imgPath;     // 品牌图片
}
@property (nonatomic, assign) int          brandId;
@property (nonatomic, retain) NSString    *brandName;
@property (nonatomic, retain) NSString    *brandInfo;
@property (nonatomic, retain) NSString    *imgPath;

@end
