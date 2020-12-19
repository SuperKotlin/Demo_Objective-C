//
//  main.m
//  初始化
//
//  Created by 朱勇 on 2020/12/16.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、new方法
    其实是一个类方法，先调用alloc，再调用init
 
    alloc是类方法(开辟内存空间)，init是对象方法(初始化对象)。
 
 2、重写init方法，在对象初始化的时候给属性赋默认值。
 
    1).重写init方法必须调用父类的init方法
    2).调用init方法是可能会初始化失败的，如果失败则返回nil。
    3).判断调用父类init方法是否成功，
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    
    Person *p1 = [Person new];
    Person *p2 = [[Person alloc] init];
    
    NSLog(@"p1 name is %@.",[p1 name]);
    NSLog(@"p2 name is %@.",[p2 name]);

    NSLog(@"Hello, World!");
    
    return 0;
}
