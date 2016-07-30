//
//  FristPartView.m
//  DynamicAddCell
//
//  Created by 龚纯 on 16/7/27.
//  Copyright © 2016年 龚纯. All rights reserved.
//

#import "FristPartView.h"
#import "AddingCellView.h"

#define ADDCELL_HIGTH 90
#define ADDCELL_WIDTH CGRectGetWidth(self.frame)
@interface FristPartView ()

@property (strong,nonatomic) AddingCellView *cellView;

@end

@implementation FristPartView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
        self.frame = frame;
        self.addingCellArray = [NSMutableArray array];
    }
    return self;
}


- (IBAction)addButtonClick:(id)sender
{
    NSInteger cout =  self.addingCellArray.count;
    _cellView = [[AddingCellView alloc] initWithFrame:CGRectMake(0, cout*ADDCELL_HIGTH+30,ADDCELL_WIDTH, ADDCELL_HIGTH)];
    _cellView.tag = 1000 + cout;
    [self addSubview:_cellView];
    [self.addingCellArray addObject:_cellView];
}

@end
