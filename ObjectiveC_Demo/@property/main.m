//
//  main.m
//  @property
//
//  Created by 朱勇 on 2020/12/12.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 
 1、@property
    作用：自动生成属性的get、set方法的声明。属性还要自己定义，实现还要自己写。
 
    语法： @property 数据类型 属性名称；

        @property NSString *name;
        自动生成以下代码：
        -(void)setName:(NSString*)name;
        -(NSString)name;
 
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
        
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    [person setName:@"jack"];
    [person setAge:18];
    NSLog(@"我叫%@，我今年%d岁。",[person name],[person age]);
    
    
    Student *student = [Student new];
    [student setName:@"marry"];
    NSLog(@"学生的名字叫%@。",[student name]);
    
    
    return 0;
}
