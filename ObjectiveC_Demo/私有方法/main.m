//
//  main.m
//  私有方法
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、对象方法一旦被声明和实现，就可以被外界对象调用。
 
 2、如果方法不写声明，只写实现，那么就不会被外界调用到。
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
//    [p sayHi];//此处调用不到sayHi方法，会直接提示错误
    [p hehe];
    
    return 0;
}
