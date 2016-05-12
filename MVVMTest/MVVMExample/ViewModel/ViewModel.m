//
//  ViewModel.m
//  MVVMTest
//
//  Created by medzone on 16/5/6.
//  Copyright © 2016年 fengweiru. All rights reserved.
//

#import "ViewModel.h"
#import "Model.h"

@implementation ViewModel

#pragma mark 加载数据(本地/网络请求)
- (void)getDataSuccess:(void (^)(NSArray *dataArray))success failure:(void (^) (NSError *error))failure {
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSArray *dataArray = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    NSMutableArray *modelArray = [NSMutableArray array];
    for (NSDictionary *dataDic in dataArray) {
        Model *model = [[Model alloc] initWithDic:dataDic];
        [modelArray addObject:model];
    }
    success(modelArray);
    
}

#pragma mark 配置加工模型数据，并通过block传递给view
- (void)viewModelWithModelBlcok:(void (^)(id))modelBlock {
    [self getDataSuccess:^(NSArray *dataArray) {
        
        if (modelBlock) {
            modelBlock([self getRandomData:dataArray]);
        }
        
    } failure:^(NSError *error) {
        
    }];
}

- (id)getRandomData:(NSArray *)array {
    u_int32_t index = arc4random_uniform((u_int32_t)array.count);
    return array[index];
}

@end
