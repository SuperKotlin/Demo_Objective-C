//
//  Child.m
//  super关键字
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Child.h"

@implementation Child

-(void)sayHi{
    NSLog(@"Child:我是sayHi方法 (我是一个对象方法)");
    [super objectMethod];//效果等同于：[self objectMethod];
}

+(void)sayHello{
    NSLog(@"Child:我是sayHello方法 (我是一个类方法)");
    
    //以下四种写法效果一样，都是调用父类的类方法
    [super classMethod];
    [self classMethod];
    [Parent classMethod];
    [Child classMethod];
}

@end
