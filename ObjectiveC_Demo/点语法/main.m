//
//  main.m
//  点语法
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    person.name=@"jack";//点语法，其实这里就是在调用setName方法。   打印信息：设置name属性的值：jack
    person.age = 19;    //点语法，其实这里就是在调用setAge方法。    打印信息：设置age属性的值：19
    
    
    //  person.name=@"jack";  等价于  [person setName:@"jack"];
    
    
    //所以，在get、set方法中慎用点语法，可能会造成递归死循环。
    
    return 0;
}
