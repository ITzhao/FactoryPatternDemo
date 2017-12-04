//
//  Factory.h
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@class Animal;

@interface Factory : NSObject

/**
 工厂Person子类
 */
@property (nonatomic,strong)Person *person;
/**
 工厂Animal子类
 */
@property (nonatomic,strong)Animal *animal;

/**
 初始化工厂，根据condition 条件初始化 Person/Animal基类，根据subclassCondt初始化基类的子类
 
 @param condition 初始化基类条件（1为 Person, 2 为Animal）
 @param subclassCondt 初始化基类子类 (Person类：（1 为Man, 2,为Woman）; Animal类：（1 为 Dog, 2 为 Cat）)
 @return 获取具体的子类
 */
- (instancetype)initFactorySubclassWithCondition:(NSInteger)condition AndBaseSubclassCondition:(NSInteger)subclassCondt;

/**
 获取子类名称
 */
- (void)getFactorySubClass;

@end
