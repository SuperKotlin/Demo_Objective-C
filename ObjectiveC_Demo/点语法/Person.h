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
}

-(void)setName:(NSString*)name;
-(NSString*)getName;

@end

NS_ASSUME_NONNULL_END
