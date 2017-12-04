//
//  BaseTableViewCell.h
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseModel;

@interface BaseTableViewCell : UITableViewCell

- (instancetype)initWithModel:(BaseModel *)model;

- (void)setDataWithModel:(BaseModel *)model;

- (CGFloat)returnCellHeight;
@end
