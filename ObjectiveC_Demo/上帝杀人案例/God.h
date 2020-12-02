//
//  God.h
//  上帝杀人案例
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gender.h"
#import "Person.h"

@interface God : NSObject{
    @public
    NSString *_name;
    int _age;
    Gender gender;
}

-(void) killWithPerson:(Person*)person;

@end
 
