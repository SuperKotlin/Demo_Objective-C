//
//  Parent.h
//  修饰符
//
//  Created by 朱勇 on 2020/12/10.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Parent : NSObject{
    @private
    NSString *name;
    
    @protected
    int age;
    
    @public
    float height;
}

-(void)sayHi;

@end

NS_ASSUME_NONNULL_END
