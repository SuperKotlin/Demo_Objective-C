//
//  Person.m
//  description方法
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString*)description{
    return [NSString stringWithFormat:@"我是Person类, 我的名字是%@",name];
}

@end
