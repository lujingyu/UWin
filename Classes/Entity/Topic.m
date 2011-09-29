//
//  Topic.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Topic.h"

@implementation Topic

@synthesize topicId;
@synthesize title;
@synthesize content;
@synthesize imgPath;
@synthesize member;
@synthesize brand;
@synthesize shop;
@synthesize addTimeString;
@synthesize praiseCount;
@synthesize commentCount;
@synthesize price;

- (void)dealloc {
	[title release];
	[content release];
	[imgPath release];
	[member release];
	[brand release];
	[shop release];
	[addTimeString release];
	[super dealloc];
}
@end
