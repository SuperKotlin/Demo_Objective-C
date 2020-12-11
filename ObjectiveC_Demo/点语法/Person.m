//
//  Person.m
//  点语法
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString*)name{
    self->name = name;
    NSLog(@"设置name属性的值：%@",name);
}
-(NSString*)getName{
    return name;
}

@end
