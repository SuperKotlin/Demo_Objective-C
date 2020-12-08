//
//  Person.h
//  static关键字
//
//  Created by 朱勇 on 2020/12/8.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    NSString *name;
    int number;
}

-(instancetype)createPersonWithName:(NSString*)name;

-(NSString*)getName;
-(int)getNumber;

@end

NS_ASSUME_NONNULL_END
