//
//  AddingCellView.m
//  DynamicAddCell
//
//  Created by 龚纯 on 16/7/28.
//  Copyright © 2016年 龚纯. All rights reserved.
//

#import "AddingCellView.h"

@implementation AddingCellView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
        self.frame = frame;
    }
    return self;
}



- (IBAction)deleteCellClick:(id)sender
{
    
}

@end
