//
//  Parent.m
//  super关键字
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Parent.h"

@implementation Parent

-(void)setName:(NSString*)name{
    self->name = name;
}

-(void)setAge:(int)age{
    self->age = age;
}

-(NSString*)getName{
    return name;
}

-(int)getAge{
    return age;
}

-(void)objectMethod{
    NSLog(@"Parent:我是对象方法");
}

+(void)classMethod{
    NSLog(@"Parent:我是类方法");
}

@end
