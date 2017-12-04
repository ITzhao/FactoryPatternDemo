//
//  OneModel.h
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "BaseModel.h"

@interface OneModel : BaseModel
@property (nonatomic,copy) NSString *tag;
@property (nonatomic,copy) NSString *content;

@end
