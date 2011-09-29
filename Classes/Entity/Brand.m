//
//  Brand.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Brand.h"

@implementation Brand

@synthesize brandId;
@synthesize brandName;
@synthesize brandInfo;
@synthesize imgPath;

- (void)dealloc {
	[brandName release];
	[brandInfo release];
	[imgPath release];
	[super dealloc];
}
@end
