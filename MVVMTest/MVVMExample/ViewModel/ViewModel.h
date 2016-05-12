//
//  ViewModel.h
//  MVVMTest
//
//  Created by medzone on 16/5/6.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SMKViewModelProtocol <NSObject>

@optional

/**
 *  传递模型给view
 */
- (void)viewModelWithModelBlcok:(void (^)(id model))modelBlock;

@end

@interface ViewModel : NSObject<SMKViewModelProtocol>



@end
