//
//  MMMessagesViewController.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMMessagesViewController.h"
static NSString*cellId = @"cellId";
@interface MMMessagesViewController ()
@property (nonatomic, assign) int cellNum;
@end

@implementation MMMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}
-(void)setupUI{
    [super setupUI];
    
    //注册cell
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    //创建控件segMennt
    NSArray*arr = [[NSArray alloc ] initWithObjects:@"分组",@"全部",nil];

    UISegmentedControl*segment = [[UISegmentedControl alloc] initWithItems:arr];
    segment.bounds = CGRectMake(0, 0, 65, 35);
    segment.selectedSegmentIndex = 0;
    //设置初始值
    self.cellNum = 13;
    [ segment addTarget:self action:@selector(clickSegment:) forControlEvents:UIControlEventValueChanged];
   
    self.navigationItem.titleView = segment;
}

-(void)clickSegment:(UISegmentedControl*)segment {
    if (segment.selectedSegmentIndex == 0) {
        self.cellNum = 13;
    }else{
        self.cellNum = 5;
    }
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.cellNum;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.backgroundColor = UIColor.whiteColor;
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row ];
    
    return cell;
}




@end
