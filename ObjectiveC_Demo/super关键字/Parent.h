//
//  Parent.h
//  super关键字
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Parent : NSObject{
    NSString *name;
    int age;
}

-(void)setName:(NSString*)name;

-(void)setAge:(int)age;

-(NSString*)getName;

-(int)getAge;

-(void)objectMethod;

+(void)classMethod;

@end

NS_ASSUME_NONNULL_END
