//
//  Attention.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Attention.h"


@implementation Attention

@synthesize attentionId;
@synthesize member;
@synthesize receiveMember;
@synthesize addTime;

- (void)dealloc {
	[member release];
	[receiveMember release];
	[addTime release];
	[super dealloc];
}
@end
