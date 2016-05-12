//
//  Model.m
//  MVVMTest
//
//  Created by medzone on 16/5/6.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import "Model.h"

@implementation Model

- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
    
        NSString *checkString = [dic objectForKey:@"title"];
        if (checkString && (NSNull *)checkString != [NSNull null]) {
            self.myTitle = checkString;
        } else {
            self.myTitle = @"";
        }
        
        checkString = [dic objectForKey:@"desc"];
        if (checkString && (NSNull *)checkString != [NSNull null]) {
            self.myDesc = checkString;
        } else {
            self.myDesc = @"";
        }
        
        checkString = [dic objectForKey:@"image"];
        if (checkString && (NSNull *)checkString != [NSNull null]) {
            self.imageString = checkString;
        } else {
            self.imageString = @"";
        }
        
        checkString = [dic objectForKey:@"date"];
        if (checkString && (NSNull *)checkString != [NSNull null]) {
            self.myDate = checkString;
        } else {
            self.myDate = @"";
        }
        
        NSNumber *checkNum = [dic objectForKey:@"like"];
        if (checkNum && (NSNull *)checkNum != [NSNull null]) {
            self.likeNum = checkNum;
        } else {
            self.likeNum = 0;
        }
        
        checkNum = [dic objectForKey:@"unlike"];
        if (checkNum && (NSNull *)checkNum != [NSNull null]) {
            self.unlikeNum = checkNum;
        } else {
            self.unlikeNum = 0;
        }
        
    }
    
    return self;
}

@end
