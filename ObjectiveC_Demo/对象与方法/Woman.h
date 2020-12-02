//
//  Woman.h
//  对象与方法
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Woman : NSObject{
    @public
    NSString *_name;
}

-(void)setName:(NSString*)name;
-(NSString*)getName;

@end

NS_ASSUME_NONNULL_END
