//
//  main.m
//  MRC手动内存管理程序
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
为对象发送一条retain消息，引用计数器就会+1；
为对象发送一条release消息，引用计数器就会-1；
当retainCount=0时，对象被系统回收。当对象被回收的时候，会自动调用dealloc方法。
 
 1、MRC：手动内存管理
 
 2、ARC：自动内存管理
        系统自动调用
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p1= [[Person alloc] initWithName:@"康康"];
    [p1 sayHi];
    
    return 0;
}
