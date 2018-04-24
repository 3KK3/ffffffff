//
//  OperationFactory.m
//  FactoryDemo
//
//  Created by YZY on 2018/4/24.
//  Copyright © 2018年 ZBWX. All rights reserved.
//

#import "OperationFactory.h"
#import "AddOperation.h"
#import "DeleteOperation.h"

@implementation OperationFactory

+ (Operation *)getOperationWithType:(NSString *)operationType {
    Operation *opInstance = nil;
    if ([operationType isEqualToString: @"+"]) {
        opInstance = [[AddOperation alloc] init];
    } else {
        opInstance = [[DeleteOperation alloc] init];
    }
    return opInstance;
}

@end
