//
//  God.m
//  上帝杀人案例
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import "God.h"

@implementation God

-(void) killWithPerson:(Person*)person{
    person->leftLife = 0;
    NSLog(@"person: %@ is die.",person->_name);
}

@end
