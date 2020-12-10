//
//  Parent.m
//  继承
//
//  Created by 朱勇 on 2020/12/9.
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

+(void)classMethod{
    NSLog(@"Parent:我是类方法");
}

@end
