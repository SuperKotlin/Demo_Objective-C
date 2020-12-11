//
//  main.m
//  多态
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 
 多态：是指一个行为，对于不同的事物具有完全不同的表现形式。
 
 
 
 
 
 */

#import <Foundation/Foundation.h>
#import "KillHeader.h"

int main(int argc, const char * argv[]) {
    
    Man *man = [Man new];
    Woman *woman = [Woman new];
    SuperMan *superMan = [SuperMan new];
    
    Killer *killer = [Killer new];
    
    [killer killPerson:man];
    [killer killPerson:woman];
    [killer killPerson:superMan];
    
    
    return 0;
}
