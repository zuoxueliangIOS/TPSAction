//
//  ViewController.m
//  TPSAction
//
//  Created by 左学良 on 16/2/29.
//  Copyright © 2016年 左学良. All rights reserved.
//

#import "ViewController.h"
#import "TPSMessageAction.h"
#import "AppDelegate.h"
@interface ViewController ()
@property (nonatomic ,assign)BOOL isShow;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"出现");
    [TPSMessageAction showMsgAddedTo:self.view.window WithMessage:@"成功" MessageCompeleteType:TPSMsgCompeleteTypeSuccess animated:YES andMessageEndAction:^{
        NSLog(@"隐藏");
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
