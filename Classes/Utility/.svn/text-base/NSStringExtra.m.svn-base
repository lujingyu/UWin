//
//  NSStringExtra.m
//  PerTool
//
//  Created by jingyu lu on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSStringExtra.h"


@implementation NSString (Extra)

+ (NSString *)intervalSinceNow: (long long) theDate  {
	/*    
	 NSDateFormatter *date=[[NSDateFormatter alloc] init];
	 [date setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	 NSDate *d=[date dateFromString:theDate];
	 
	 NSTimeInterval late=[d timeIntervalSince1970]*1;
	 */    
    
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval now = [dat timeIntervalSince1970] * 1;
    NSString *timeString = @"";
    
    NSTimeInterval cha = now - (theDate/1000.0f);
    
    if (cha/3600<1) {
        timeString = [NSString stringWithFormat:@"%f", cha/60];
        timeString = [timeString substringToIndex:timeString.length-7];
		if ([timeString isEqualToString:@"-0"] || [timeString isEqualToString:@"0"] || [timeString isEqualToString:@"-1"]) {
			timeString = @"1";
		}
        timeString = [NSString stringWithFormat:@"%@分钟前", timeString];
    }
    if (cha/3600>1&&cha/86400<1) {
        timeString = [NSString stringWithFormat:@"%f", cha/3600];
        timeString = [timeString substringToIndex:timeString.length-7];
        timeString =[NSString stringWithFormat:@"%@小时前", timeString];
    }
    if (cha/86400>1) {
        timeString = [NSString stringWithFormat:@"%f", cha/86400];
        timeString = [timeString substringToIndex:timeString.length-7];
		if ([timeString isEqualToString:@"1"]) {
			timeString = @"昨天";
		}
		else if ([timeString isEqualToString:@"2"]) {
			timeString = @"前天";
		}
		else {
			//timeString =[NSString stringWithFormat:@"%@天前", timeString];
			NSDate *date = [NSDate dateWithTimeIntervalSince1970:theDate/1000];
			NSDateFormatter *inform = [[NSDateFormatter alloc] init];
			[inform setDateFormat:@"yyyy-MM-dd"];
			timeString = [inform stringFromDate:date];
	//		NSLog(@"%@", timeString);
			[inform release];			
		}
    }
	//    [date release];
    return timeString;
}

@end
