//
//  AddMainView.m
//  DynamicAddCell
//
//  Created by 龚纯 on 16/7/27.
//  Copyright © 2016年 龚纯. All rights reserved.
//

#import "AddMainView.h"
#import "FristPartView.h"

@interface AddMainView ()

@property (strong,nonatomic) FristPartView *partView;

@end

@implementation AddMainView

-(instancetype)init
{
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
        [self loadUI];
    }
    return self;
}


-(void)loadUI
{
    _partView = [[FristPartView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.scrollView.frame), 30)];
    NSLog(@"%f",CGRectGetWidth(self.scrollView.frame));
    self.scrollView.delegate = self;
    [self.scrollView addSubview:_partView];
    
}

- (IBAction)sureButtonClick:(id)sender
{
    [self removeFromSuperview];
}
- (IBAction)cancelButtonClick:(id)sender
{
    [self removeFromSuperview];
}

@end
