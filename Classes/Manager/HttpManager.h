//
//  HttpManager.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpManagerDelegate.h"

@interface HttpManager : NSObject {

	NSOperationQueue    *operationQueue;
	id<HttpManagerDelegate>    delegate;
}
@property (nonatomic, retain)  NSOperationQueue  *operationQueue;
@property (nonatomic, assign)  id<HttpManagerDelegate> delegate;



@end
