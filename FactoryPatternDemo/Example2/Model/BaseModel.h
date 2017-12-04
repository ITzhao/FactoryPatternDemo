//
//  BaseModel.h
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
