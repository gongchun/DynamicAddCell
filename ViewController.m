//
//  ViewController.m
//  DynamicAddCell
//
//  Created by 龚纯 on 16/7/27.
//  Copyright © 2016年 龚纯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong,nonatomic) AddMainView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickTheButton:(id)sender
{
    _mainView = [[AddMainView alloc] init];
    [UIView animateWithDuration:0.5 animations:^{
        _mainView.center = self.view.center;
        [self.view addSubview:_mainView];
    }];
}

@end
