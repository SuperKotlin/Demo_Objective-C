//
//  Killer.h
//  多态
//
//  Created by 朱勇 on 2020/12/11.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Killer : NSObject

-(void)killPerson:(Person*)person;

@end

NS_ASSUME_NONNULL_END
