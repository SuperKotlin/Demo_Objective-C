//
//  main.m
//  继承
//
//  Created by 朱勇 on 2020/12/9.
//  Copyright © 2020 朱勇. All rights reserved.
//


/*
 
 1、继承以后，可以拥有父类所有的成员。包括类方法。
 
 继承语法： 
 
    @interface 子类名 : 父类名

    @end
 
 -----------------------------------
 
    @interface Child : Parent

    @end
 
 
 2、单继承：一个类只能继承一个类，和java一样。
 
 
 3、NSObject类是所有类的祖宗类，基类。
 
 */

#import <Foundation/Foundation.h>
#import "Child.h"

int main(int argc, const char * argv[]) {
    
    //调用父类的对象方法
    Child *child = [Child new];
    [child setName:@"儿砸"];
    [child setAge:18];
    
    NSString *name = [child getName];
    int age = [child getAge];
    NSLog(@"姓名：%@, 年龄：%d",name,age);
    
    
    //调用父类的类方法
    [Child classMethod];
    
    return 0;
}
