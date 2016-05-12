//
//  Model.h
//  MVVMTest
//
//  Created by medzone on 16/5/6.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSString *myTitle;  //标题

@property (nonatomic, strong) NSString *myDesc;   //描述

@property (nonatomic, strong) NSString *imageString; //图片

@property (nonatomic, strong) NSString *myDate;   //时间

@property (nonatomic, strong) NSNumber *likeNum;  //喜欢数量

@property (nonatomic, strong) NSNumber *unlikeNum; //不喜欢数量

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
