//
//  main.m
//  @property
//
//  Created by 朱勇 on 2020/12/12.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 ==============================xcode4.4之前的写法==============================
 
 1、@property
    作用：自动生成属性的get、set方法的声明。属性还要自己定义，实现还要自己写。
 
    语法： @property 数据类型 属性名称；

        @property NSString *name;
        自动生成以下代码：
        -(void)setName:(NSString*)name;
        -(NSString)name;
 
    多个声明：@property可以批量生成(要求类型一致)，比如：
            
            @property float weight,height;
 
 2、@synthesize
    作用：生成一个真私有的属性（在@implementation中生成私有属性），并自动生成属性的get、set方法的实现。
            
        注意：@synthesize的set方法是将值赋给它生成的那个私有属性。
 
    语法： @synthesize 属性名称;
 
        @synthesize name;
        自动生成以下代码：
 
        @implementation Person{
            NSString *name;
        }
 
        -(void)setName:(NSString*)name{
            self->name = name;
        }
        -(NSString)name{
            return _name;
        }
        
        @end
 
----
        多个声明：@synthesize可以批量生成(不要求类型一致)，比如：
         
         @synthesize name, age, weight, height;
 
 3、系统生成多余的属性会造成属性变多，所以我们自己不再定义声明属性，使用系统生产的私有属性即可。
    此时通过对象名访问属性就不再访问得到了，只有一个isa会被自动提示：person->isa。
 

 ----------------------------声明-------------------------------
         @interface Person : NSObject

         @property NSString *name;
         @property int age;

         @end
 ----------------------------实现-------------------------------
         @implementation Person

         @synthesize name;
         @synthesize age;

         @end
 
 3、如何让@synthesize不再生成私有属性，而是操作我们已经定义的属性【例子在Student类】
    
    语法：@synthesize 【@property的名称】= 自定义的属性名

----------------------------声明-------------------------------
 
         @interface Student : NSObject{
             NSString *_name;
         }

         @property NSString *name;

         @end
 
 ----------------------------实现-------------------------------

         @implementation Student

         @synthesize name = _name;

         @end
 
 
 4、自动生成的get、set方法是没有任何逻辑验证的，如果需要逻辑验证，那么就自己实现get、set方法进行逻辑编码。
 
 
 ==============================xcode4.4之后的写法==============================
 
 1、什么都不需要做，只需要写一个@property即可。例子见 Teacher类：
        
 @property NSString *name;
 
 系统会自动生成私有属性（带下划线）和get、set方法。
 
 -(void)test{
     self->_name = @"测试类，私有属性";
 }
 
 2、如果需要逻辑验证，则自己重新set、get方法。
    
    注意：可以单独重新get或者set方法，如果同时重新，则会编译报错，因为此时系统不会再自动生成私有属性的声明，自己在@implementation中补上就行。
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    [person setName:@"jack"];
    [person setAge:18];
    NSLog(@"我叫%@，我今年%d岁。",[person name],[person age]);
    
    
    Student *student = [Student new];
    [student setName:@"marry"];
    NSLog(@"学生的名字叫%@。",[student name]);
    
    
    Teacher *teacher = [Teacher new];
    [teacher setName:nil];
    NSLog(@"老师的名字叫%@。",[teacher name]);
    
    return 0;
}
