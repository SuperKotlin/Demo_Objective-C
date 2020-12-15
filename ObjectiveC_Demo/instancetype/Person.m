//
//  Person.m
//  instancetype
//
//  Created by 朱勇 on 2020/12/14.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)sayHi{
    NSLog(@"Hello你好啊！");
}


+(instancetype)person{
    return [self new];
}

@end
