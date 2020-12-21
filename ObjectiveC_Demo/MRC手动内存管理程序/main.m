//
//  main.m
//  MRC手动内存管理程序
//
//  Created by 朱勇 on 2020/12/21.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 
引用计数器retainCount默认为1。
为对象发送一条retain消息，引用计数器就会+1；
为对象发送一条release消息，引用计数器就会-1；
当retainCount=0时，对象被系统回收。当对象被回收的时候，会自动调用dealloc方法。
 
 1、MRC：手动内存管理
 
 2、ARC：自动内存管理
        系统自动调用retain和release。
 
 3、重写dealloc方法
    1).当对象被回收的时候，会自动调用dealloc方法。
    2).重写dealloc时必须调用父类的dealloc方法，并且放在最后一句代码执行。
 
            - (void)dealloc{
                NSLog(@"系统回收了%@对象",self.name);
                [super dealloc];
            }
 
 
    ==========================================================================================
    ps：在ARC机制下是没办法调用dealloc方法的，要关闭ARC机制，使用MRC机制。
        关闭方法：Build Setting里 -> 设置Objective- C Automatic Reference Counting为No
    ==========================================================================================
 4、retainCount默认为1
        NSUInteger count = [p1 retainCount];
        NSLog(@"count=%lu",count); //count=1
  
 
 5、什么时候调用retain，什么时候调用releas？？？
    当多一个人使用这个对象的时候，应该先为这个对象发送一个retain消息。
    当少一个人使用这个对象的时候，应该为这个对象发送一个release消息。
 
 
 6、内存管理的原则：
    1).当有对象创建的时候，就要匹配一个release调用；
    2).retain和release的次数要匹配；
    3).谁用谁retain，谁不用谁release；
    4).只有在多一个人的时候才retain，少一个人使用的时候才release。
 
    有始有终，有加有减。
 
 
 
         Person *p2 = [[Person alloc] init];
         
         [p2 retain];
         [p2 retain];
         [p2 retain];
         [p2 release];
         [p2 release];
         [p2 release];
         
         [p2 release];
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p1= [[Person alloc] initWithName:@"康康"];
    
    //获取retainCount的默认值
    NSUInteger count = [p1 retainCount];
    NSLog(@"count=%lu",count);
    
    //调用对象方法
    [p1 sayHi]; //Hello,康康你好啊！
    
    
    
    [p1 retain];
    NSLog(@"count=%lu",[p1 retainCount]);
    [p1 release];
    NSLog(@"count=%lu",[p1 retainCount]);
    
    
    
    //发送release消息，retainCount=0, 触发对象回收，自动调用dealloc方法。
    [p1 release]; //系统回收了康康对象
    NSLog(@"count=%lu",[p1 retainCount]);
    
    
    /*
     
     2020-12-21 22:25:07.747021+0800 MRC手动内存管理程序[28783:2495677] count=1
     2020-12-21 22:25:07.747471+0800 MRC手动内存管理程序[28783:2495677] Hello,康康你好啊！
     2020-12-21 22:25:07.747516+0800 MRC手动内存管理程序[28783:2495677] count=2
     2020-12-21 22:25:07.747548+0800 MRC手动内存管理程序[28783:2495677] count=1
     2020-12-21 22:25:07.747584+0800 MRC手动内存管理程序[28783:2495677] 系统回收了康康对象
     2020-12-21 22:25:07.747615+0800 MRC手动内存管理程序[28783:2495677] count=0
     
     
     */
    
    
    
    Person *p2 = [[Person alloc] init];
    
    [p2 retain];
    [p2 retain];
    [p2 retain];
    [p2 release];
    [p2 release];
    [p2 release];
    
    [p2 release];
    
    return 0;
}
