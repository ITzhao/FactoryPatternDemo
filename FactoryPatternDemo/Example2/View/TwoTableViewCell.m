//
//  TwoTableViewCell.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "TwoTableViewCell.h"
#import "TwoModel.h"

@interface TwoTableViewCell ()
@property (nonatomic,strong)UIImageView *mainImageView;
@end

@implementation TwoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self congifmainImageView];
    };
    return self;
}
- (void)congifmainImageView
{
    self.mainImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.contentView addSubview:self.mainImageView];
}
- (void)setDataWithModel:(BaseModel *)model
{
    TwoModel *twoModel = (TwoModel *)model;
    self.mainImageView.backgroundColor = [UIColor redColor];
}
- (CGFloat)returnCellHeight
{
    return 100;
}
@end
