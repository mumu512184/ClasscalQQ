//
//  MMTabBarModel.h
//  ClasscalMMQQ
//
//  Created by 冬冬 on 2019/3/19.
//  Copyright © 2019 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMTabBarModel : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *vcName;

+(NSArray*)setModelWithDictionNary:(NSArray*)dictArray;
@end

NS_ASSUME_NONNULL_END
