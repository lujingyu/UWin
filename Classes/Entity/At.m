//
//  At.m
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "At.h"


@implementation At

@synthesize atId;
@synthesize member;
@synthesize atMember;
@synthesize source;
@synthesize content;
@synthesize source_type;

- (void)dealloc {
	[member release];
	[atMember release];
	[source release];
	[content release];
	[source_type release];
	[super dealloc];
}
@end
