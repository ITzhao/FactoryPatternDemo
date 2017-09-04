//
//  Animal.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "Animal.h"
#import "Dog.h"
#import "Cat.h"

@implementation Animal
- (instancetype)initAnimalSubclassWithCondition:(NSInteger)condition
{
    if (condition == 1) {
        Dog *dog = [[Dog alloc]init];
        dog.name = @"我是🐶";
        return dog;
    }
    if (condition == 2) {
        Cat *cat = [[Cat alloc]init];
        cat.name = @"我是🐱";
        return cat;
    }
    return nil;
}
- (NSString *)likeEatFood
{
    return nil;
}@end
