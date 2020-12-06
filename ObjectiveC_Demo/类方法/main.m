//
//  main.m
//  类方法
//
//  Created by 朱勇 on 2020/12/6.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、什么时候需要定义类方法？
    a.不需要访问类属性；
    b.不需要调用其他对象方法。
 
 2、类方法规范
 
    1).无参类方法
    定义一个类之后，默认定义一个和类名一样的类方法，返回一个最纯洁的对象。因为苹果和第三方都是这么做的。
 
        +(Person*)person;
     
        +(Person*)person{
            Person *person = [Person new];
            return person;
        }
 
    2).有参类方法，属性由调用者设置  ------- 类名WithXxx:
 
       +(Person*)personWithName:(NSSting*)name andAge:(int)age;

       +(Person*)personWithName:(NSSting*)name andAge:(int)age{
             Person *person = [Person new];
             person->name = name;
             person->age = age;
             return person;
        }
 
 3、系统类：NSArray
 
    + (instancetype)array;
    + (instancetype)arrayWithObject:(ObjectType)anObject;
    + (instancetype)arrayWithObjects:(const ObjectType _Nonnull [_Nonnull])objects count:(NSUInteger)cnt;
    + (instancetype)arrayWithObjects:(ObjectType)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
    + (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;
 
 */

#import <Foundation/Foundation.h>
#import "TimeUtils.h"

int main(int argc, const char * argv[]) {
    
    TimeUtils *timtUtil = [TimeUtils new];
    
    [timtUtil getUtilsObject];
    NSString *string = [TimeUtils getCurrentTime];
    NSLog(@"time is :%@",string);
    
    return 0;
}
