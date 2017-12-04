//
//  ViewController.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)Push:(UIBarButtonItem *)sender {
    Class class = NSClassFromString(@"MainTableViewController");
    UIViewController *vc = [[class alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*      工厂模式 也称为 虚拟构造  ，在基类中定义创建对象接口，让子类决定实例化哪个类；工厂方法让一个类的实例化延迟到子类
     *       中进行；他解决的问题是对象的创建时机，他提供了一种的扩展的策略。（特征：<1>:存在继承关系；<2>:运用了多态的特
     *          征）     使用条件如下：
     *       1，一个无法预期知道他要生成哪个类的对象，就让其子类决定；
     *       2，创建大量相同类的对象。
     */
    
    Factory *man = [[Factory alloc]initFactorySubclassWithCondition:1 AndBaseSubclassCondition:1];
    [man getFactorySubClass];
    
    Factory *woman = [[Factory alloc]initFactorySubclassWithCondition:1 AndBaseSubclassCondition:2];
    [woman getFactorySubClass];
    
    Factory *dog = [[Factory alloc]initFactorySubclassWithCondition:2 AndBaseSubclassCondition:1];
    [dog getFactorySubClass];
    
    Factory *cat = [[Factory alloc]initFactorySubclassWithCondition:2 AndBaseSubclassCondition:2];
    [cat getFactorySubClass];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
