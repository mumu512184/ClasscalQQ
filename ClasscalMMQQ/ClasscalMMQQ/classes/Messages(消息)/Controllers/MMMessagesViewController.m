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


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
