//
//  Shop.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Shop.h"

@implementation Shop
@synthesize shopId;
@synthesize shopName;
@synthesize shopInfo;
@synthesize imgPath;
@synthesize shopAddress;
@synthesize shopPhone;

- (void)dealloc {
	[shopName release];
	[shopInfo release];
	[imgPath release];
	[shopAddress release];
	[shopPhone release];
	[super dealloc];
}

@end
