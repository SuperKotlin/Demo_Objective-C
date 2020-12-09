//
//  main.m
//  self关键字
//
//  Created by 朱勇 on 2020/12/8.
//  Copyright © 2020 朱勇. All rights reserved.
//

/**
 
 1、self关键字
    1).self可以用在实例方法和类方法当中;
    2).self是一个指针，在实例方法中指向当前对象;
    3).self在类方法当中指向当前类。
 
 2、作用
 
    1).可以显式地访问当前对象的属性
        语法：self->属性
    2).可以调用其他实例方法
        语法：[self 方法名];
 
    3).在对象方法中，不能使用self调用类方法。
 
 3、self用在类方法当中：
    self用在类方法当中，就相当于当前这个类。
 
 4、对象方法可以声明多次，但是只有一次有效，并且只能实现一次。
 
 5、对象方法之间不能重名，类方法之间也不能重名，但是对象方法和类方法可以重名。
 
 6、可以在类方法当中使用self调用其他类方法。
    1). [类名 类方法]
    2). [self 类方法]
    建议第二种！！！
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
    [p setName:@"马化腾"];
    
    NSLog(@"name is :%@",[p getName]);
    
    
    
    
    return 0;
}
