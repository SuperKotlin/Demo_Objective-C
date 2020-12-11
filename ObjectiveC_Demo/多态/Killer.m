//
//  Killer.m
//  多态
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "Killer.h"

@implementation Killer

-(void)killPerson:(Person*)person{
    NSLog(@"杀手开始杀人了...");
    [person help];
}

@end
