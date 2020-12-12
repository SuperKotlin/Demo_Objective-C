//
//  main.m
//  @property
//
//  Created by 朱勇 on 2020/12/12.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 
 1、@property
    作用：自动生成属性的get、set方法的声明。
    在编译的时候，编译器会根据@property生成方法的实现。
 
    语法： @property 数据类型 属性名称；

        @property NSString *name;
        自动生成以下代码：
        -(void)setName:(NSString*)name;
        -(NSString)name;
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    [person setName:@"jack"];
    [person setAge:18];
    
    NSLog(@"我叫%@，我今年%d岁。",[person name],[person age]);
    
    return 0;
}
