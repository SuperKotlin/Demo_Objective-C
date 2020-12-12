//
//  Teacher.m
//  @property
//
//  Created by 朱勇 on 2020/12/12.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher{
    NSString *_name;
}

- (void)setName:(NSString *)name{
    if (name == nil) {
        NSLog(@"姓名为空，赋值为默认值");
        _name = @"default";
        return;
    }
    _name = name;
}

- (NSString *)name{
    return _name;
}

@end
