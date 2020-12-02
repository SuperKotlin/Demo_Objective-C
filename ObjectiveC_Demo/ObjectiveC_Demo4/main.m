//
//  main.m
//  ObjectiveC_Demo4
//
//  Created by 朱勇 on 2020/12/1.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、属性不允许声明的时候初始化赋值。
    @interface Person : NSObject{
    //    NSString *_name1 = @"jack"; //这是错误写法，属性不允许声明的时候初始化赋值。
    }
 
 2、
 
 
 
 
 
 
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    @public
//    NSString *_name1 = @"jack"; //这是错误写法，属性不允许声明的时候初始化赋值。
    NSString *_name2;
}

@end

@implementation Person
 

@end

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    person->_name = @"Jane";
    NSLog(@"%@",person->_name);
    
    return 0;
}
