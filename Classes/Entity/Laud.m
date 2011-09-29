//
//  Laud.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Laud.h"


@implementation Laud

@synthesize laudId;
@synthesize member;
@synthesize topic;
@synthesize addTime;

- (void)dealloc {
	[member release];
	[topic release];
	[addTime release];
	[super dealloc];
}
@end
