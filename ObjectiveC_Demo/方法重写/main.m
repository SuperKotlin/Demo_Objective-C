//
//  main.m
//  方法重写
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、方法的重写：只需要在实现类里重写实现方法，不需要在声明类里声明。
 
 
 2、当一个父类指针指向子类对象的时候，如果通过这个指针调用的方法被子类重写，调用的就是子类重写的方法。
 
    Parent *parent = [Child new];
    [parent hello]; //Child:你好啊，我是子类方法
 
 */

#import <Foundation/Foundation.h>
#import "Child.h"

int main(int argc, const char * argv[]) {
    
    Child *child = [Child new];
    [child hello];
    
    
    Parent *parent = [Child new];
    [parent hello];
    
    return 0;
}
