//
//  Factory.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/9/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "Factory.h"
#import "Person.h"
#import "Animal.h"

@implementation Factory

- (instancetype)initFactorySubclassWithCondition:(NSInteger)condition AndBaseSubclassCondition:(NSInteger)subclassCondt
{
    if (condition == 1) {
        Person *person = [[Person alloc]initPersonSubclassWithCondition:subclassCondt];
        self.person = person;
    }
    if (condition == 2) {
        Animal *animal = [[Animal alloc]initAnimalSubclassWithCondition:subclassCondt];
        self.animal = animal;
    }
    return self;
}
- (void)getFactorySubClass
{
    if (self.person != nil) {
        NSLog(@"%@----%@",self.person.name,[self.person likeSomeOne]);
    }
    if (self.animal != nil) {
        NSLog(@"%@----%@",self.animal.name,[self.animal likeEatFood]);
    }
}
@end
