//
//  Person.h
//  初始化
//
//  Created by 朱勇 on 2020/12/18.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;

-(instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
