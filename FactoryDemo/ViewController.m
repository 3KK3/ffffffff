//
//  ViewController.m
//  FactoryDemo
//
//  Created by YZY on 2018/4/24.
//  Copyright © 2018年 ZBWX. All rights reserved.
//

#import "ViewController.h"
#import "AddOperation.h"
#import "OperationFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //不使用工厂模式 做加法运算的话
   Operation *addOperation = [[AddOperation alloc] init];
   float result = [addOperation getResultWithParam: 10 anotherParam: 10];
    NSLog(@"%f",result);
    
    //使用工厂模式的话
    Operation *operation = [OperationFactory getOperationWithType: @"+"];
    result = [operation getResultWithParam: 10 anotherParam: 10];
    NSLog(@"%f",result);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
