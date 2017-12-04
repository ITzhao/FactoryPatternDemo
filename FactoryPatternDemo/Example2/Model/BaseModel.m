//
//  BaseModel.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "BaseModel.h"
#import "MJExtension.h"

@implementation BaseModel
+ (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    BaseModel *model;
    if ([dictionary[@"tag"] isEqualToString:@"1"]) {
        Class class = NSClassFromString(@"OneModel");
        model =  [class mj_objectWithKeyValues:dictionary];
    }else if ([dictionary[@"tag"] isEqualToString:@"2"]){
        Class class = NSClassFromString(@"TwoModel");
        model =  [class mj_objectWithKeyValues:dictionary];
    }else{
        Class class = NSClassFromString(@"ThreeModel");
        model =  [class mj_objectWithKeyValues:dictionary];
    }
    return model;
}

@end
