//
//  Person.h
//  点语法
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    NSString *name;
    int _age;
}

-(void)setName:(NSString*)name;
-(NSString*)getName;

-(void)setAge:(int)age;
-(int*)getAge;

@end

NS_ASSUME_NONNULL_END
