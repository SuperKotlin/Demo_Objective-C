//
//  Person.h
//  对象与方法
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Woman.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    Woman *_woman;
}

-(void)addPerson:(Woman*)woman;

-(Woman*)getPerson;


@end

NS_ASSUME_NONNULL_END
