//
//  main.m
//  修饰符
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 访问修饰符：@private、 @protected、 @public、 @package ，只能用来修饰属性 ，不能用来修饰方法。
 
 1、@private
    被修饰的属性只能在本类的内部被访问，只能在本类的方法实现中访问。
 
 2、@protected
    被修饰的属性只能在本类和子类中被访问，只能在本类和子类的方法实现中访问。
 
 3、@public
    可以在任意地方访问。
 
 4、@package
    可以在当前框架中访问。
 
 
 5、如果不设置，默认就是：@protected。
 
 6、子类可以继承父类的私有属性，但是不能在子类中直接访问父类私有属性，可以通过调用父类的方法进行访问。
 
 7、修饰符的作用域：
    当某个属性被修饰符修饰后，一直往下作用，直到遇到下一个修饰符，在此之间的所有属性都是同一个修饰符。
 
 8、使用建议：
 
    1). @public任何时候都不要使用；
    2). 如果属性不想给子类使用，那么就使用@private；
    3). 推荐使用@protected (默认)。
 
 
 */

#import <Foundation/Foundation.h>
#import "Child.h"

int main(int argc, const char * argv[]) {
    
    Child *child = [Child new];
    child->height=133;
    
    return 0;
}
