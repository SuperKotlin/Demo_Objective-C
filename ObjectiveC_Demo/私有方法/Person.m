//
//  Person.m
//  私有方法
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)sayHi{
    NSLog(@"sayHi。。。。。。。。。。。。。。。。");
}


-(void)hehe{
    NSLog(@"hehe。。。。。。。。。。。。。。。。");
    [self sayHi];
}

@end
