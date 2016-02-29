//
//  TPSMessageAction.m
//  提示框
//
//  Created by 潘学俊 on 15/12/23.
//  Copyright © 2015年 潘学俊. All rights reserved.
//

#import "TPSMessageAction.h"

@interface TPSMessageAction ()

@property (nonatomic,strong) UIImageView     *backSquare;

@property (nonatomic,strong) UILabel    *messageView;

@property (nonatomic,strong) UIImageView    *compeleteImage;

@property (nonatomic,assign) TPSMsgCompeleteType    tpye;

@property (nonatomic,strong) UILabel        *messageLabel;

@property (nonatomic,strong) UIView         *container;



@end



@implementation TPSMessageAction

+ (void)showMsgAddedTo:(UIView *)view animated:(BOOL)animated
{
    
}

+ (void)showMsgAddedTo:(UIView *)view WithMessage:(NSString *)message animated:(BOOL)animated
{
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self != nil) {
        
        _container = nil;
        
        _backSquare = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 175, 175)];
        _backSquare.image = [UIImage imageNamed:@"card_messageAction_bg"];
        _backSquare.center = self.center;
        [self addSubview:_backSquare];
        
        _compeleteImage = [[UIImageView alloc] initWithFrame:CGRectMake(40, 15, 95, 95)];
        [_backSquare addSubview:_compeleteImage];
        
        _messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 120, 145, 40)];
        _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.textAlignment = NSTextAlignmentCenter;
        [_backSquare addSubview:_messageLabel];
    }
    
    
    
    return self;
}




+ (void)showMsgAddedTo:(UIView *)view WithMessage:(NSString *)message MessageCompeleteType:(TPSMsgCompeleteType )type animated:(BOOL)animated andMessageEndAction:(void(^)())messageEndAction {
    
    
    TPSMessageAction *msgAction = [[TPSMessageAction alloc] initWithFrame:view.bounds];
    
    msgAction.tpye = type;
    
    msgAction.container = view;
    
    msgAction.messageEndAction = messageEndAction;
    
    [msgAction setUpSubVeiwMsg:message MessageCompeleteType:type];
    
    
}




- (void)setUpSubVeiwMsg:(NSString *)message MessageCompeleteType:(TPSMsgCompeleteType )type {
    
    self.messageLabel.text = message;
 
    if (type == TPSMsgCompeleteTypeSuccess) {
        
        
        self.messageLabel.textColor = [UIColor colorWithRed:69 green:123 blue:239 alpha:1];
        self.compeleteImage.image = [UIImage imageNamed:@"card_messageAction_success"];
        
    } else if (type == TPSMsgCompeleteTypeFail) {
        
        self.messageLabel.textColor = [UIColor colorWithRed:255 green:111 blue:64 alpha:1];
        self.compeleteImage.image = [UIImage imageNamed:@"card_messageAction_fail"];
    }
    
    
    [self showMessage];
    
    
    
    
}
    

- (void)showMessage{
    
    if (self.container != nil) {
        
        [self.container addSubview:self];
        
    } else {
        
        
        [[UIApplication sharedApplication].keyWindow addSubview:self];
        
        
    }
    
    
    [self performSelector:@selector(hidenMessage) withObject:nil afterDelay:3];
    
    
}

- (void)hidenMessage {
    [self removeFromSuperview];
 
    if (self.messageEndAction != nil) {
        
        self.messageEndAction();
    }
}

@end
