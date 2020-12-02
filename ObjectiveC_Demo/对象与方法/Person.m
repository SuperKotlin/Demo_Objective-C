//
//  Person.m
//  对象与方法
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)addPerson:(Woman*)woman{
    NSLog(@"woman name is %@",[woman getName]);
    _woman = woman;
}

-(Woman*)getPerson{
    return _woman;
}

@end
