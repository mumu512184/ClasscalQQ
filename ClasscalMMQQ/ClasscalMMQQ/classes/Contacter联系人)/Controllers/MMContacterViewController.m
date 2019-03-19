//
//  MMContacterViewController.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMContacterViewController.h"

@interface MMContacterViewController ()

@end

@implementation MMContacterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

-(void)setupUI{
    [super setupUI];
    //注册
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ContacterCell"];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"header_icon_add"] style:UIBarButtonItemStylePlain target:self action:@selector(clickAddContecterItem:)];
}

-(void)clickAddContecterItem:(UIBarButtonItem*)leftBarBtnItem{
    [self.navigationController pushViewController:[MMBaseViewController new] animated:true];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
        
        UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:@"ContacterCell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        cell.imageView.image = [UIImage imageNamed:@"found_icons_gamecenter"];
        cell.textLabel.text = @"我是美的代言词";
        return cell;
}



@end
