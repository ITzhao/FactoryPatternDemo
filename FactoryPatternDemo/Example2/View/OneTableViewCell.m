//
//  OneTableViewCell.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "OneTableViewCell.h"
#import "OneModel.h"

@implementation OneTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    };
    return self;
}

- (void)setDataWithModel:(BaseModel *)model
{
    OneModel *oneModel = (OneModel *)model;
    self.textLabel.text = oneModel.content;
}
- (CGFloat)returnCellHeight
{
    return 50;
}

@end
