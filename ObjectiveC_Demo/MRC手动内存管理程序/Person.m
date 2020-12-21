//
//  Person.m
//  MRC手动内存管理程序
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc{
    NSLog(@"系统回收了%@对象",self.name);
    [super dealloc];
}

-(void)sayHi{
    NSLog(@"Hello,%@你好啊！",self.name);
}

-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
