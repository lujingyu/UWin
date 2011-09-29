//
//  SinaUser.m
//  Share
//
//  Created by jingyu lu on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SinaUser.h"


@implementation SinaUser

@synthesize userId;
@synthesize screen_name;
@synthesize name;
@synthesize province;
@synthesize city;
@synthesize location;
@synthesize description;
@synthesize url;
@synthesize profile_image_url;
@synthesize domain;
@synthesize gender;
@synthesize followers_count;
@synthesize friends_count;
@synthesize statuses_count;
@synthesize favourites_count;
@synthesize created_at;
@synthesize following;
@synthesize verified;

- (void)dealloc {
	[userId release];
	[screen_name release];
	[name release];
	[province release];
	[city release];
	[location release];
	[description release];
	[url release];
	[profile_image_url release];
	[domain release];
	[gender release];
	[followers_count release];
	[friends_count release];
	[statuses_count release];
	[favourites_count release];
	[created_at release];
	[following release];
	[verified release];
	
	[super dealloc];
}

@end
