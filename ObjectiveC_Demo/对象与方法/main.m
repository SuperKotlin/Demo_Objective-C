//
//  main.m
//  对象与方法
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 对象与方法：
 
    对象作为方法的参数，对象作为方法的返回值。
 
 1、类的本质是我们自定义的一个数据类型。
 
    声明一个Person类型指针变量person，并且初始化。
    Person *person = [Person new];
 
 2、对象作为方法的参数
 
    Woman *woman =  [Woman new];
    [woman setName:@"爱丽丝"];
    
    Person *person = [Person new];
    [person addPerson:woman];
 
 3、对象作为方法的返回值
 
    Woman*w = [person getPerson];
    NSLog(@"person is %@",[w getName]);
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Woman *woman =  [Woman new];
    [woman setName:@"爱丽丝"];
    
    Person *person = [Person new];
    [person addPerson:woman];
    
    Woman*w = [person getPerson];
    NSLog(@"person is %@",[w getName]);
    
    return 0;
}
