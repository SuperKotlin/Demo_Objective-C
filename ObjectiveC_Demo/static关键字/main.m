//
//  main.m
//  static关键字
//
//  Created by 朱勇 on 2020/12/8.
//  Copyright © 2020 朱勇. All rights reserved.
//


/*
 
 1、static关键字
 
    a. 在OC当中，static既不能修饰属性，也不能修饰方法。
    b.static可以修饰方法中的局部变量。修饰以后就会变成静态变量，存储在常量区，方法执行结束以后不会被回收，下次再执行的时候直接使用。
 
 2、如果方法的返回值是当前类对象，那么返回值类型就写instancetype
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
    p =  [p createPersonWithName:@"小名"];
    NSLog(@"姓名：%@，学号：%d",[p getName],[p getNumber]);
    
    
    return 0;
}
