//
//  Person.m
//  static关键字
//
//  Created by 朱勇 on 2020/12/8.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)createPersonWithName:(NSString*)name{
    static int number ;
    number++;
    self->name = name;
    self->number = number;
    return self;
}

-(NSString*)getName{
    return name;
}

-(int)getNumber{
    return number;
}

@end
