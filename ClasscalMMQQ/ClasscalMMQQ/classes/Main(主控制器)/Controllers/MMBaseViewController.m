//
//  MMBaseViewController.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMBaseViewController.h"
#import "MMBaseModel.h"
@interface MMBaseViewController ()

@end

@implementation MMBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}


-(void)setupUI{
   
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
   
    
}

-(NSArray*)loadDataWithPath:(NSString*)fileName{
    NSString*path = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
    NSArray*array  = [NSArray arrayWithContentsOfFile:path];
  return   [MMBaseModel modelWithArray:array];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}




@end
