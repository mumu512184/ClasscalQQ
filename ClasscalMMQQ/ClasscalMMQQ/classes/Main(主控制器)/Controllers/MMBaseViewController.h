//
//  MMBaseViewController.h
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMBaseViewController : UITableViewController
-(void)setupUI;
-(NSArray*)loadDataWithPath:(NSString*)stringPath;
@end

NS_ASSUME_NONNULL_END
