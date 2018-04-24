//
//  OperationFactory.h
//  FactoryDemo
//
//  Created by YZY on 2018/4/24.
//  Copyright © 2018年 ZBWX. All rights reserved.
//

#import "Operation.h"


@interface OperationFactory : Operation

+ (Operation *)getOperationWithType:(NSString *)operationType; //可以使用枚举

@end
