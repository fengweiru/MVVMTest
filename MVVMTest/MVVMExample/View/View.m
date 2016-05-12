//
//  View.m
//  MVVMTest
//
//  Created by medzone on 16/5/9.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import "View.h"
#import "Configure.h"
#import "Model.h"


@interface View ()

@property (nonatomic, strong) UILabel *myTitle;

@property (nonatomic, strong) UIButton *exchangeButton;

@end

@implementation View

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self setupUI];
        
    }
    return self;
}

- (void)setupUI {
    
    self.myTitle.frame = CGRectMake(0, 10, Screen_Width, 30);
    self.myTitle.text = @"我是来显示模型数据的";
    [self addSubview:self.myTitle];
    
    self.exchangeButton.frame = CGRectMake(Screen_Width/2 - 100, 70, 200, 30);
    [self.exchangeButton setTitle:@"点我进行push事件" forState:UIControlStateNormal];
    [self addSubview:self.exchangeButton];
}

//点击按钮
- (void)clickAction:(UIButton *)sender {
    if (self.mDelegate && [self.mDelegate respondsToSelector:@selector(smk_view:withEvents:)]) {
        [self.mDelegate smk_view:self withEvents:@{@"jump": @"vc"}];
    }
}

- (void)configureViewWithViewModel:(id<SMKViewModelProtocol>)viewModel {
    [viewModel viewModelWithModelBlcok:^(id model) {
        Model *cuModel = (Model *)model;
        self.myTitle.text = cuModel.myTitle;
    }];
}

//懒加载
- (UILabel *)myTitle
{
    if (_myTitle == nil) {
        _myTitle = [[UILabel alloc] init];
        _myTitle.backgroundColor = [UIColor clearColor];
        _myTitle.textColor = [UIColor blackColor];
        _myTitle.textAlignment = NSTextAlignmentCenter;
    }
    return _myTitle;
}

- (UIButton *)exchangeButton
{
    if (_exchangeButton == nil) {
        _exchangeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_exchangeButton addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        [_exchangeButton setBackgroundColor:[UIColor colorWithRed:126/255.0 green:205/255.0 blue:244/255.0 alpha:1.0]];
    }
    return _exchangeButton;
}


@end
