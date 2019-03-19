//
//  MMBaseModel.m
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import "MMBaseModel.h"

@implementation MMBaseModel
+(NSArray*)modelWithArray:(NSArray*)array{
    NSMutableArray*arrM = [NSMutableArray new];
    for (NSDictionary*dict in  array) {
        MMBaseModel*model = [MMBaseModel new];
        [model setValuesForKeysWithDictionary:dict];
        [arrM addObject:model];
    }
    return arrM.copy;
}
@end
