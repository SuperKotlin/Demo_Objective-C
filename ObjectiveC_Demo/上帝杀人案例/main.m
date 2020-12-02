//
//  main.m
//  上帝杀人案例
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "God.h"


int main(int argc, const char * argv[]) {
    
    God* god = [God new];
    god->_name = @"上帝";
    god->gender = Girl;
    
    Person *p = [Person new];
    p->_name = @"莎奇拉";
    p->gender = Boy;
    
    [god killWithPerson:p];
    
    
    return 0;
}
