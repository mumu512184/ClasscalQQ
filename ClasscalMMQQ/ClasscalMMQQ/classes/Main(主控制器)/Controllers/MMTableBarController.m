//
//  MMTableViewController.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMTableBarController.h"
#import "MMTabBarModel.h"
#import "MMNaviViewController.h"
@interface MMTableBarController ()
@property (nonatomic, strong) NSArray<MMTabBarModel*> *modelArray;
@end

@implementation MMTableBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (MMTabBarModel*model in self.modelArray) {
   MMNaviViewController*naviVc =     [self creatNavigationControllerWithTitle:model.title andImageName:model.imageName andVcName:model.vcName];
        [self addChildViewController:naviVc];
    }
   
  
    
}

//懒加载tabBar控制器数据
-(NSArray<MMTabBarModel *> *)modelArray{
    if (_modelArray == nil) {
        NSString*path = [[NSBundle mainBundle] pathForResource:@"tabBarViewControllers.plist" ofType:nil];
        NSArray*array = [NSArray arrayWithContentsOfFile:path];
        _modelArray = [MMTabBarModel setModelWithDictionNary:array];
    }
    
    return _modelArray;
    
}

//创建TabBarVc子控制器,NaviVc
-(MMNaviViewController*)creatNavigationControllerWithTitle:(NSString*)title andImageName:(NSString*)imageName  andVcName:(NSString*)vcName {
    Class cls = NSClassFromString(vcName);
    UIViewController*vc = [[cls alloc] init];
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:imageName] ;
    vc.title = title;
    
    MMNaviViewController*naviVc = [[MMNaviViewController alloc] initWithRootViewController:vc];
    return naviVc;
}

@end
