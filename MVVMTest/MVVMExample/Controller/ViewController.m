//
//  ViewController.m
//  MVVMTest
//
//  Created by medzone on 16/5/6.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import "ViewController.h"
#import "View.h"
#import "Configure.h"
#import "ViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) View *myView;

@property (nonatomic, strong) ViewModel *viewModel;

@property (nonatomic, strong) ViewManager *viewManager;

@property (nonatomic, strong) UIButton *loadButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"MVVM Example";
    
    self.myView = [[View alloc] initWithFrame:CGRectMake(0, 64, Screen_Width, 120)];
    self.myView.backgroundColor = [UIColor colorWithRed:255/255.0 green:192/255.0 blue:94/255.0 alpha:1.0];
    self.myView.mDelegate = self.viewManager;
    [self.view addSubview:self.myView];
    
    self.loadButton.frame = CGRectMake(Screen_Width/2-100, 250, 200, 60);
    [self.loadButton setTitle:@"点我加载/改变模型数据" forState:UIControlStateNormal];
    [self.view addSubview:self.loadButton];
}

- (void)clickBtnAction:(UIButton *)sender {
    
    // 根据viewModel配置view
    [self.myView configureViewWithViewModel:self.viewModel];
    
}


//懒加载
- (ViewManager *)viewManager {
    if (_viewManager == nil) {
        _viewManager = [[ViewManager alloc] init];
    }
    return _viewManager;
}

- (ViewModel *)viewModel {
    if (_viewModel == nil) {
        _viewModel = [[ViewModel alloc] init];
    }
    return _viewModel;
}

- (UIButton *)loadButton {
    if (_loadButton == nil) {
        _loadButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loadButton setBackgroundColor:[UIColor colorWithRed:221/255.0 green:255/255.0 blue:52/255.0 alpha:1.0]];
        [_loadButton setTitleColor:[UIColor colorWithRed:0/255.0 green:121/255.0 blue:253/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_loadButton addTarget:self action:@selector(clickBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loadButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
