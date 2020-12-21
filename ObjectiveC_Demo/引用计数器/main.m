//
//  main.m
//  引用计数器
//
//  Created by 朱勇 on 2020/12/20.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、引用计数器：
 
    每一个对象都有一个默认的属性retainCount，代表当前对象被多少个人在使用，对象初始化的时候，retainCount默认为1。
    当retainCount为0的时候，代表当前对象无人使用，会被系统自动回收。
 
 2、如何操作retainCount
    
    1).为对象发送一条retain消息，引用计数器就会+1；
    2).为对象发送一条release消息，引用计数器就会-1；
    3).为对象发送一条retainCount消息，就可以获得引用计数器的值；
    4).当retainCount=0，就会被系统回收。
        当对象被回收的时候，会自动调用dealloc方法。
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *person =  [[Person alloc]init];
    
    
    return 0;
}
