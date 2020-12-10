//
//  Parent.m
//  修饰符
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Parent.h"

@implementation Parent

-(void)sayHi{
   Parent *parent = [Parent new];
    parent->name=@"jack";
    parent->age=18;
    parent->height=130;
}

@end
