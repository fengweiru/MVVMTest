//
//  ViewManager.m
//  MVVMTest
//
//  Created by medzone on 16/5/9.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import "ViewManager.h"

@implementation ViewManager

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)smk_view:(__kindof UIView *)view withEvents:(NSDictionary *)events
{
    if ([[events allKeys] containsObject:@"jump"]) {
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor whiteColor];
        vc.title = @"push页面";
        [[self sui_currentVCWithView:view].navigationController pushViewController:vc animated:true];
    }
}

- (UIViewController *)sui_currentVCWithView:(UIView *)view
{
    Class aClass = NSClassFromString(@"UIViewController");
    for (UIView *next = [view superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:aClass]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

@end
