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
 
 
 2、内存回收的本质
    
    1).当声明一个变量以后，实际上就是申请一个指定字节的空间，这些空间就不会再分配给其他人使用了；
    2).当变量被回收以后，就表示该字节空间从此以后可以分配给其他人使用了，但是在分配给别人之前，当前变量的数据还在。
    3).回收以后继续使用该对象，可能会出现问题。
 
 3、僵尸对象
    一个已经被释放的对象，它所占的内存空间还没有分配给别人的时候，这样的对象叫做僵尸对象。
 
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
