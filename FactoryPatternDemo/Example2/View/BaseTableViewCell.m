//
//  BaseTableViewCell.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "BaseModel.h"
@implementation BaseTableViewCell

- (instancetype)initWithModel:(BaseModel *)model
{
    // 获取Model 类名
    NSString *modelName = [NSString stringWithUTF8String:object_getClassName(model)];
    BaseTableViewCell *cell;
    if ([modelName isEqualToString:@"OneModel"]) {
        cell = [[NSClassFromString(@"OneTableViewCell") alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:modelName];
    }else if ([modelName isEqualToString:@"TwoModel"]){
        cell = [[NSClassFromString(@"TwoTableViewCell") alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:modelName];
    }else{
        cell = [[NSClassFromString(@"ThreeTableViewCell") alloc]initWithStyle:UITableViewCellStyleDefault
            reuseIdentifier:modelName];
    }
    return cell;
}
- (void)setDataWithModel:(BaseModel *)model
{
    
}
- (CGFloat)returnCellHeight
{
    return 0;
}
@end
