//
//  ViewController.m
//  TestC
//
//  Created by bingcai on 16/1/27.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [ViewController new];
        
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
