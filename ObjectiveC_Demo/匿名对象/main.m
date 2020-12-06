//
//  main.m
//  匿名对象
//
//  Created by 朱勇 on 2020/12/6.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、声明和使用
 
     [Person new]->name  = @"jack";
     [[Person new] sayHi];
 
 2、匿名对象只能使用一次！！！
 
 3、什么时候用？
 
    a.对象成员只会使用一次
    b.当某个方法的参数是一个对象时
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    
    [Person new]->name  = @"jack";
    [[Person new] sayHi];
    
    return 0;
}
