//
//  MMTabBarModel.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMTabBarModel.h"

@implementation MMTabBarModel
+(NSArray*)setModelWithDictionNary:(NSArray*)dictArray{
 NSMutableArray*arrayM = [NSMutableArray array];
    for (NSDictionary*dic in dictArray) {
        MMTabBarModel*model = [[MMTabBarModel alloc] init];
        [model setValuesForKeysWithDictionary:dic];
        [arrayM addObject:model];
        
    }
    return arrayM.copy;
}
@end
