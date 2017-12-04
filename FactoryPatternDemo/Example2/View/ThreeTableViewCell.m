//
//  ThreeTableViewCell.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "ThreeTableViewCell.h"
#import "ThreeModel.h"

@interface ThreeTableViewCell ()
@property (nonatomic,strong)UIImageView *mainImageView;
@property (nonatomic,strong)UILabel *contentLabel;
@end
@implementation ThreeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configUI];
    };
    return self;
}
- (void)configUI
{
    self.mainImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.contentView addSubview:self.mainImageView];
    self.contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 30, 100, 50)];
    [self.contentView addSubview:self.contentLabel];
}
- (void)setDataWithModel:(BaseModel *)model
{
    ThreeModel *threeModel = (ThreeModel *)model;
    self.mainImageView.backgroundColor = [UIColor orangeColor];
    self.contentLabel.text = threeModel.content;
}
- (CGFloat)returnCellHeight
{
    return 100;
}

@end
