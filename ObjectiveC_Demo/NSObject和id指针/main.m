//
//  main.m
//  NSObject和id指针
//
//  Created by 朱勇 on 2020/12/14.
//  Copyright © 2020 朱勇. All rights reserved.
//


/*
 
 
 1、NSObject
    NSObject是所有类的基类，NSObject指针是一个万能指针，可以指向任意的OC对象。
 
         NSObject *person1 = [Person new];
         [(Person *)person1 sayHi];
 
    ps：如果要调用子类特有方法，要做类型转换。
 
 
 2、id指针
    id指针是一个万能指针，可以指向任意的OC对象。
    
    1).id类型定义的时候已经带了*, 所以在我们声明id类型对象的时候就不需要带*了。
        id name2 = @"我是jack";
        id person = [Person new];
        
    2).代码演示：
 
        id person2 = [Person new];
        [person2 sayHi];
 
 
 3、NSObject和id的区别：
 
    相同点：都是万能指针，可以指向任意的OC对象。
 
    不同点：
            1).NSObject会做编译检查，id则不会。
                
            2).id指针不能用点语法，只能调用方法。
 
 
 4、建议使用id类型的万能指针。
 
 

 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    //类型强转
    NSObject *person1 = [Person new];
    [(Person *)person1 sayHi];
    
    //直接调用
    id person2 = [Person new];
    [person2 sayHi];
    
    return 0;
}
