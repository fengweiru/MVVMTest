//
//  View.h
//  MVVMTest
//
//  Created by medzone on 16/5/9.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewManager.h"
#import "ViewModel.h"

@interface View : UIView

@property (nonatomic, assign) id<SMKViewProtocol> mDelegate;

- (void)configureViewWithViewModel:(id<SMKViewModelProtocol>)viewModel;

@end
