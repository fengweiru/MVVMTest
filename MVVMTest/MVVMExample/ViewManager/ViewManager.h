//
//  ViewManager.h
//  MVVMTest
//
//  Created by medzone on 16/5/9.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol SMKViewProtocol <NSObject>

@optional

/**
 *  将view中的事件通过代理传递出去
 *
 *  @param view   view自己
 *  @param events 所触发事件的一些描述信息
 */
- (void)smk_view:(__kindof UIView *)view withEvents:(NSDictionary *)events;

@end


@interface ViewManager : NSObject<SMKViewProtocol>

@end
