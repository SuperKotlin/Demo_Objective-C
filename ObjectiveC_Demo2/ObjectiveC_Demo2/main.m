//
//  main.m
//  ObjectiveC_Demo2
//
//  Created by 朱勇 on 2020/12/1.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、NULL
    只能作为指针变量的值 ，代表这个指针不指向内存当中的任何空间。
    NULL其实等价于0，是一个宏，就是0。
 
 2、nil
    只能作为指针变量的值 ，代表这个指针不指向内存当中的任何空间。
    NULL其实等价于0，是一个宏，就是0。
 
 
    ps：NULL和nil是一样的
 
    if(NULL==nil){
        NSLog(@"NULL==nil");
    }
 
 3、使用建议：
 
    C指针用NULL：
        int *p1 = NULL; //p1指针不指向内存当中的任何一块空间。
 
    OC指针用nil：
        Person *p2 = nil; //p2指针不指向任何对象。
 
    总结：绝大多数情况下，nil用在OC的类指针上面，NULL用在C指针上面。
    
 
 4、如果一个类指针的值为nil，代表指针不指向任何对象。
    Person *p = nil;
    
    此时，通过p指针去访问p指针指向的对象的属性，运行会报错。
    但是，通过p指针去调用对象的方法，运行不会报错，方法不会执行，不会有任何反应，
 
 --------------------------------------------------------------------------------------
     Person *p = nil;
 //    p->name = @"jack"; // 会报错
     [p sayHi]; // 不会报错
     
     NSLog(@"程序执行结束啦...");
 
 
 */

#import <Foundation/Foundation.h>

@interface Person: NSObject {
    @public
    NSString *name;
    @public
    int age;
}

-(void)sayHi;

@end

@implementation Person

-(void)sayHi{
    NSLog(@"sayHi方法执行啦...");
}

@end

int main(int argc, const char * argv[]) {

//    if(NULL==nil){
//        NSLog(@"NULL==nil");
//    }
    
    Person *p = nil;
//    p->name = @"jack"; // 会报错
    [p sayHi]; // 不会报错
    
    NSLog(@"程序执行结束啦...");
    return 0;
}
