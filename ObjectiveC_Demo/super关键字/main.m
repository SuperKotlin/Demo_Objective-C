//
//  main.m
//  super关键字
//
//  Created by 朱勇 on 2020/12/9.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 
 super关键字
 
 1、可以用在对象方法和类方法当中
 
 2、在对象方法中，可以使用super关键字调用从父类继承过来的对象方法。
 
 3、类方法也一样，调用父类的类方法。
 
 4、super只能调用方法，不能访问属性。
 
 */


#import <Foundation/Foundation.h>
#import "Child.h"


int main(int argc, const char * argv[]) {
    
    Child *child = [Child new];
    [child sayHi];
    
    [Child classMethod];//直接调用父类的类方法，因为类方法也能被子类继承
    [Child sayHello];//调用自己的类方法，再从类方法当中使用super关键字调用父类的类方法
    
    
    
    return 0;
}
