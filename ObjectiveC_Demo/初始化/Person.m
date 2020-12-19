//
//  Person.m
//  初始化
//
//  Created by 朱勇 on 2020/12/18.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

//- (instancetype)init{
//    self = [super init];
//    if (self) {
//        //Initialize self
//        self.name = @"Jack";
//    }
//    return self;
//}


- (instancetype)init {
    if (self = [super init]) {
        // Initialize self
        self.name = @"Jackhhh";
    }
    return self;
}


//这里必须以initWith开头，否则会报错。因为initWith开头的才会被编译器认为是构造方法，self只能在构造方法中赋值。
-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
