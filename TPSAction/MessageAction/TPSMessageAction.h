//
//  TPSMessageAction.h
//  提示框
//
//  Created by 潘学俊 on 15/12/23.
//  Copyright © 2015年 潘学俊. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TPSMsgCompeleteType) {
    
    TPSMsgCompeleteTypeSuccess,
    TPSMsgCompeleteTypeFail,
    
    
};


@interface TPSMessageAction : UIView



@property (strong, nonatomic) void(^messageEndAction)();


+ (void)showMsgAddedTo:(UIView *)view animated:(BOOL)animated;

+ (void)showMsgAddedTo:(UIView *)view WithMessage:(NSString *)message animated:(BOOL)animated;

+ (void)showMsgAddedTo:(UIView *)view WithMessage:(NSString *)message MessageCompeleteType:(TPSMsgCompeleteType )type animated:(BOOL)animated andMessageEndAction:(void(^)())messageEndAction;







@end
