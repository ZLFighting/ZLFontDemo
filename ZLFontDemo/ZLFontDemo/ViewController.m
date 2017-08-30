//
//  ViewController.m
//  ZLFontDemo
//
//  Created by ZL on 2017/8/30.
//  Copyright © 2017年 zhangli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 测试
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"测试花样字体: 239.00 --- ABC cdef %";
    // 调用
//    label.font = [UIFont systemFontOfSize:20];
    label.font = [UIFont fontWithName:@"UniversLTStd-UltraCn" size:20];
    [self.view addSubview:label];
    
}

/*
 * 取出花样字体的fontName
 *
 * // familyName : Univers LT Std
 * // fontName : UniversLTStd-UltraCn
 * // 实际中我们使用的应该是fontName，也就是“UniversLTStd-UltraCn”
 */
- (void)testFontName {
    
    for (NSString *familyName in [UIFont familyNames]) {
        NSLog(@"familyName：%@", familyName);
        
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"fontName:%@", fontName);
        }
        
        NSLog(@"=====");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
