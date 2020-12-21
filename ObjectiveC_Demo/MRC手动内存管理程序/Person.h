//
//  Person.h
//  MRC手动内存管理程序
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;

-(void)sayHi;

-(instancetype)initWithName:(NSString *)name;
    
@end

NS_ASSUME_NONNULL_END
