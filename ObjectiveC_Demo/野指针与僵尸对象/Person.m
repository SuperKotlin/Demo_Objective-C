//
//  Person.m
//  野指针与僵尸对象
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"当你看到这句话，代表对象被回收了，回收是立即回收。");
    [super dealloc];
}

-(void)sayHi{
    NSLog(@"Hello，你好啊，我叫%@.",self.name);
}

@end
