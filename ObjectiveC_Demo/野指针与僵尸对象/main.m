//
//  main.m
//  野指针与僵尸对象
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//


/*
 
 1、野指针
    C语言中的野指针：定义一个指针变量，没有初始化，这个指针变量的值是一个垃圾值，指向一块随机的空间，这指针就叫做野指针。
    OC语言中的野指针：指针指向的对象已经被回收了。
 
 
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p1 = [[Person alloc]init];
    [p1 release]; //回收对象
    NSLog(@"retainCount=%lu",p1.retainCount);
    
    p1.name = @"Jack";
    [p1 sayHi];
    
    
    return 0;
}
