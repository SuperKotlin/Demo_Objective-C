//
//  Person.m
//  私有属性
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person{
    NSString *name;
}

-(void)sayHi{
    name=@"jack";
    NSLog(@"sayHi...:%@",name);
}

@end
