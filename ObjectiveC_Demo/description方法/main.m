//
//  main.m
//  description方法
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *person = [Person new];
    person->name = @"小米";
    
    //重写description方法之前
    NSLog(@"person:%p",person);              // person:0x1005a90c0
    NSLog(@"person:%@",person);              // person:<Person: 0x1005a90c0>
    NSLog(@"person:%@",[person description]);// person:<Person: 0x1005a90c0>
    
    //重写description方法之后
    //  person:0x100508ce0
    //  person:我是Person类, 我的名字是小米
    //  person:我是Person类, 我的名字是小米
    
    return 0;
}
