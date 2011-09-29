//
//  DataManager.h
//  UWin
//
//  Created by jingyu lu on 9/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpManager.h"

@interface DataManager : NSObject <HttpManagerDelegate>{

	HttpManager    *httpManager;
}

@end
