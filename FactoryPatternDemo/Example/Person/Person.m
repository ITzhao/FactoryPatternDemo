//
//  Person.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "Person.h"
#import "Man.h"
#import "Woman.h"

@implementation Person
- (instancetype)initPersonSubclassWithCondition:(NSInteger)condition
{
    if (condition == 1) {
        Man *man = [[Man alloc]init];
        man.name = @"我是男人";
        return man;
    }
    if (condition == 2) {
        Woman *woman = [[Woman alloc]init];
        woman.name = @"我是女人";
        return woman;
    }
    return nil;
}
- (NSString *)likeSomeOne
{
    return nil;
}
@end
