//
//  MainTableViewController.m
//  FactoryPatternDemo
//
//  Created by iOSCoderZhao on 2017/12/4.
//  Copyright © 2017年 iOSCoderZhao. All rights reserved.
//

#import "MainTableViewController.h"
#import "BaseTableViewCell.h"
#import "BaseModel.h"
@interface MainTableViewController ()
@property (nonatomic,strong)NSMutableDictionary *dic;
@property (nonatomic,strong)NSMutableArray *modelArray;
@end

@implementation MainTableViewController
- (NSMutableDictionary *)dic
{
    if (!_dic) {
        _dic = [[NSMutableDictionary alloc]init];
    }
    return _dic;
}

- (NSMutableArray *)modelArray
{
    if (!_modelArray) {
        _modelArray = [[NSMutableArray alloc]init];
    }
    return _modelArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *dataArray = @[
                             @{
                                 @"tag" : @"1",
                                 @"content" : @"我是纯文本只有文字1",
                                 },
                             @{
                                 @"tag" : @"2",
                                 @"image" : @"url",
                                 },
                             @{
                                 @"tag" : @"3",
                                 @"content" : @"文字加图片1",
                                 @"images" : @"url"
                                 },
                             @{
                                 @"tag" : @"1",
                                 @"content" : @"我是纯文本只有文字2",
                                 },
                             @{
                                 @"tag" : @"2",
                                 @"image" : @"url",
                                 },
                             @{
                                 @"tag" : @"3",
                                 @"content" : @"文字加图片2",
                                 @"images" : @"url"
                                 },
                             @{
                                 @"tag" : @"2",
                                 @"image" : @"url",
                                 },
                             @{
                                 @"tag" : @"3",
                                 @"content" : @"文字加图片3",
                                 @"images" : @"url"
                                 },
                             @{
                                 @"tag" : @"1",
                                 @"content" : @"我是纯文本只有文字3",
                                 },
                             @{
                                 @"tag" : @"2",
                                 @"image" : @"url",
                                 },

                             ];
    
    for (int i = 0; i < dataArray.count; i++) {
        NSDictionary *dic = dataArray[i];
        BaseModel *model = [BaseModel initWithDictionary:dic];
        [self.modelArray addObject:model];
    }
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.modelArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   return [self.dic[@(indexPath.row)] returnCellHeight];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseModel *model = self.modelArray[indexPath.row];
    NSString *modelName = [NSString stringWithUTF8String:object_getClassName(model)];
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:modelName];
    if (cell == nil) {
        cell = [[BaseTableViewCell alloc]initWithModel:model];
    }
    [cell setDataWithModel:model];
    [self.dic setObject:cell forKey:@(indexPath.row)];
    return cell;
}
@end
