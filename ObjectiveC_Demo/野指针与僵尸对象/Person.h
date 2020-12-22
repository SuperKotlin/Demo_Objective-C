//
//  Person.h
//  野指针与僵尸对象
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;

-(void)sayHi;

@end

NS_ASSUME_NONNULL_END
