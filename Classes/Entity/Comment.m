//
//  Comment.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Comment.h"

@implementation Comment

@synthesize commentId;
@synthesize content;
@synthesize addTime;
@synthesize member;
@synthesize topic;

- (void)dealloc {
	[content release];
	[addTime release];
	[member release];
	[topic release];
	[super dealloc];
}
@end
