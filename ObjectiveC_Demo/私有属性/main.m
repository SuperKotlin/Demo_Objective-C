//
//  main.m
//  私有属性
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、当属性被修饰@private之后，虽然不能被访问，但是xcode仍然会有该属性的代码提示，只是没有权限访问。
 
 2、如何做到真私有？那就是把属性定义在实现类中，而不是声明类中。
 
        @implementation Person{
            NSString *name;
        }
 
    这样以后，就算属性被其他修饰符修饰，也是无效的，一直都是真私有，xcode也不再有代码提示。
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
//    p->age;
    [p sayHi];
    
    return 0;
}
