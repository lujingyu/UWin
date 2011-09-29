#import <UIKit/UIKit.h>
#import "URLConnection.h"
//#import "Status.h"

/*
typedef enum {
    WEIBO_REQUEST_TIMELINE = 0,
    WEIBO_REQUEST_REPLIES,
    WEIBO_REQUEST_MESSAGES,
    WEIBO_REQUEST_SENT,
    WEIBO_REQUEST_FAVORITE,
    WEIBO_REQUEST_DESTROY_FAVORITE,
    WEIBO_REQUEST_CREATE_FRIENDSHIP,
    WEIBO_REQUEST_DESTROY_FRIENDSHIP,
    WEIBO_REQUEST_FRIENDSHIP_EXISTS,
	WEIBO_REQUEST_USERINFO,
} RequestType;
*/

@interface WeiboClient : URLConnection
{
    NSString    *requestType;
    id          context;
    SEL         action;
    BOOL        hasError;
    NSString*   errorMessage;
    NSString*   errorDetail;

    BOOL _secureConnection;
}

@property(nonatomic, copy) NSString *requestType;
@property(nonatomic, assign) id context;
@property(nonatomic, assign) BOOL hasError;
@property(nonatomic, copy) NSString* errorMessage;
@property(nonatomic, copy) NSString* errorDetail;

+ (WeiboClient *)sharedInstance;

- (id)initWithTarget:(id)aDelegate engine:(OAuthEngine *)__engine action:(SEL)anAction;

- (void)getPublicTimeline; // statuses/public_timeline

- (void)getFollowedTimelineMaximumID:(long long)maxID startingAtPage:(int)page count:(int)count;
- (void)getFollowedTimelineSinceID:(long long)sinceID startingAtPage:(int)pageNum count:(int)count; // statuses/friends_timeline
- (void)getFollowedTimelineSinceID:(long long)sinceID withMaximumID:(long long)maxID startingAtPage:(int)pageNum count:(int)count; // statuses/friends_timeline

- (void)getMentionsMaximumID:(long long)maxID startingAtPage:(int)page count:(int)count;
- (void)getMentionsSinceID:(long long)sinceID startingAtPage:(int)page count:(int)count;
- (void)getMentionsSinceID:(long long)sinceID withMaximumID:(long long)maxID startingAtPage:(int)page count:(int)count;

- (void)favorite:(long long)statusId;

- (void)unfavorite:(long long)statusId;

- (void)getCommentCounts:(NSMutableArray *)statuses;

- (void)getComments:(long long)statusId startingAtPage:(int)page count:(int)count;

- (void)getFriends:(int)userId cursor:(int)cursor count:(int)count;

- (void)getFollowers:(int)userId cursor:(int)cursor count:(int)count;

- (void)getUser:(int)userId;

- (void)getUserByScreenName:(NSString *)screenName;

- (void)getFriendship:(int)userId;

- (void)follow:(int)userId;

- (void)unfollow:(int)userId;

- (void)post:(NSString*)tweet;

- (void)upload:(NSData*)jpeg status:(NSString *)status;

- (void)repost:(long long)statusId tweet:(NSString*)tweet;

- (void)comment:(long long)statusId commentId:(long long)commentId comment:(NSString*)comment;

- (void)sendDirectMessage:(NSString*)text to:(int)recipientedId;

- (NSString *)getURL:(NSString *)path queryParameters:(NSMutableDictionary*)params;

- (void)alert;

@end
