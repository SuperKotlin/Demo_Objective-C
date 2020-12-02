//
//  Person.h
//  上帝杀人案例
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gender.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    @public
    NSString *_name;
    @public
    int _age;
    @public
    Gender gender;
    @public
    int leftLife;//剩余年龄
}

@end

NS_ASSUME_NONNULL_END
