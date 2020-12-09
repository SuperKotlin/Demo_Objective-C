//
//  Person.m
//  self关键字
//
//  Created by 朱勇 on 2020/12/8.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString*)name{
    //当局部变量或者形参变量名和当前类的属性(成员变量名)相同，那么访问成员变量用self关键字。
    self->name = name;
}

-(NSString*)getName{
    //在一个方法中调用另一个实例方法，要用self。
    return [NSString stringWithFormat:@"大家好，我叫%@%@。",[self getFinalType],name];
}

-(NSString*)getFinalType;{
    return @"PERSON-";
}

@end
