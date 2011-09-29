//
//  User.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize userId;
@synthesize userName;
@synthesize nickName;
@synthesize password;
@synthesize imgPath;

- (void)dealloc {
	[userName release];
	[nickName release];
	[password release];
	[imgPath release];
	[super dealloc];
}

@end
