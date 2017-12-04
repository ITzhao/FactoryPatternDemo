//
//  Animal.h
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
/**
 记录名字
 */
@property (nonatomic,strong)NSString *name;

/**
 初始化基类，根据条件初始化出相应的子类
 
 @param condition 条件（这里 1 为Dog, 2 为 Cat）
 @return 获取具体的子类
 */
- (instancetype)initAnimalSubclassWithCondition:(NSInteger)condition;

/**
 子类实现对应的方法
 
 @return 要执行的操作
 */
- (NSString *)likeEatFood;

@end
