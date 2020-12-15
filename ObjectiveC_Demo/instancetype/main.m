//
//  main.m
//  instancetype
//
//  Created by 朱勇 on 2020/12/14.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 如果方法的返回值是instancetype，代表方法的返回值是当前这个类的对象。
 
 
 +(instancetype)person{
     return [self new];
 }
 
 
 Person *person = [Person person];
 [person sayHi];
 
 
 Student *student = [Student person];
 [student study];
 
 
 
 2、使用建议：
 
    1.如果方法内部需要创建对象，类名不要写死，防止子类对象创建对象错误，要写self  --->   [self new]
    2.返回值也不要写死，要写instancetype
 
 
 3、instancetype只能作为返回值
 
 4、id既可以作为返回值，也可以作为参数，也可声明指针变量。
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"


int main(int argc, const char * argv[]) {
    
     
    Person *person = [Person person];
    [person sayHi];
    
    
    Student *student = [Student person];
    [student study];
    
    
    return 0;
}
