//
//  main.m
//  初始化
//
//  Created by 朱勇 on 2020/12/16.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、new方法
    其实是一个类方法，先调用alloc，再调用init
 
    alloc是类方法(开辟内存空间)，init是对象方法(初始化对象)。
 
 2、重写init方法，在对象初始化的时候给属性赋默认值。
 
    1).重写init方法必须调用父类的init方法
    2).调用init方法是可能会初始化失败的，如果失败则返回nil。
    3).判断调用父类init方法是否成功，
 
    4). 重写init方法的规范：
         - (instancetype)init{
             self = [super init];
             if (self) {
                 //Initialize self
             }
             return self;
         }
 
    5).什么时候需要重写init方法：需要在初始化时给属性赋值的时候。不希望初始化以后属性的值为nil、NULL、0。
 
 
 
 3、自定义构造方法
    为什么要自定义构造方法，为了在使用的时候可以根据传入的参数对对象进行初始化。
     
        1).自定义构造方法的返回值必须是instancetype
        2).自定义构造方法的名称必须以initWith开头
        3).方法的实现的规范要求和init一样
 
 
        示例代码：
             //这里必须以initWith开头，否则会报错。因为initWith开头的才会被编译器认为是构造方法，self只能在构造方法中赋值。
             -(instancetype)initWithName:(NSString *)name{
                 if (self = [super init]) {
                     self.name = name;
                 }
                 return self;
             }
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    
    Person *p1 = [[Person alloc] init];
    NSLog(@"p1 name is %@.",[p1 name]);

    
    Person *p2 = [[Person alloc] initWithName:@"KangKang"];
    NSLog(@"p2 name is %@.",[p2 name]);
    
    return 0;
}
