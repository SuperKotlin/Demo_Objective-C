//
//  main.m
//  NSString
//
//  Created by 朱勇 on 2020/12/6.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*
 
 1、打印:
    %p: 打印的是指针变量的值，地址值
    %@: 打印的是指针变量指向的对象
 
         NSString *str = @"OC";
         NSLog(@"打印：%p",str); // 0x100001010
         NSLog(@"打印：%@",str); // OC
 
 2、最常用的类方法：
 
    1). stringWithUTF8String
        + (nullable instancetype)stringWithUTF8String:(const char *)nullTerminatedCString;
        
        作用：将C语言字符串转换成OC字符串
 
         NSString *str2 = [NSString stringWithUTF8String:"22"];
         NSLog(@"打印：%@",str2); // 22
 
    2). stringWithFormat  //使用频率很高
        + (instancetype)stringWithFormat:(NSString *)format, ...
        
        作用：拼接OC字符串
 
        NSString *name = @"小明";
        int age = 19;
        //大家好，我叫xx，我今年xx岁。
        NSString *str3 = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁。",name,age];
        NSLog(@"打印：%@",str3); // 大家好，我叫小明，我今年19岁。
 
 3、最常用的实例方法：
 
    1). length  ：得到字符串的长度
 
        NSString *str4 = @"abcdef";
        NSUInteger len = [str4  length];
        NSLog(@"打印：%lu",len); // 6
 
    2). characterAtIndex ：得到字符串中指定下标的字符
 
        NSString *str5 = @"abc我爱你中国";
        NSLog(@"打印：%c",[str5 characterAtIndex:2]); // c  (字符串当中下标为2的字符为c，下标从0开始)
        NSLog(@"打印：%C",[str5 characterAtIndex:2]); // c  (字符串当中下标为2的字符为c，下标从0开始)
        NSLog(@"打印：%C",[str5 characterAtIndex:3]); // 我  (字符串当中下标为2的字符为c，下标从0开始)
        
        //PS: 如果是打印char类型用%c，如果是打印unichar类型用%C。unichar占两个字节，可以打印中文。
 
    3). isEqualToString ：比较两个字符串内容是否一样，不要用==判断，可能会出问题。
        
        NSString *str6 = @"123";
        NSString *str7 = @"345";
        if ([str6 isEqualToString:str7]) {
            NSLog(@"YES");
        }else{
            NSLog(@"NO");
        }
        //打印：NO
 
    4). compare：比较字符串的大小
            - (NSComparisonResult)compare:(NSString *)string;
            返回值是枚举类，也可以用int接收。
 
                 a < b   then return NSOrderedAscending. The left operand is smaller than the right operand.
                 a > b   then return NSOrderedDescending. The left operand is greater than the right operand.
                 a == b  then return NSOrderedSame. The operands are equal.
             
                 typedef NS_CLOSED_ENUM(NSInteger, NSComparisonResult) {
                     NSOrderedAscending = -1L,
                     NSOrderedSame,
                     NSOrderedDescending
                 };
 
         NSString *str8 = @"China";
         NSString *str9 = @"Japan";
         int i = [str8 compare:str9];
         NSLog(@"打印：%d",i); //打印：-1
 
    -1：小于
    0：等于
    1：大于
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str = @"OC";
    NSLog(@"打印：%p",str); // 0x100001010
    NSLog(@"打印：%@",str); // OC
    
    
    NSString *str2 = [NSString stringWithUTF8String:"22"];
    NSLog(@"打印：%@",str2); // 22
    
    NSString *name = @"小明";
    int age = 19;
    //大家好，我叫xx，我今年xx岁。
    NSString *str3 = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁。",name,age];
    NSLog(@"打印：%@",str3); // 大家好，我叫小明，我今年19岁。
    
    
    NSString *str4 = @"abcdef";
    NSUInteger len = [str4  length];
    NSLog(@"打印：%lu",len); // 6

    
    NSString *str5 = @"abc我爱你中国";
    NSLog(@"打印：%c",[str5 characterAtIndex:2]); // c  (字符串当中下标为2的字符为c，下标从0开始)
    NSLog(@"打印：%C",[str5 characterAtIndex:2]); // c  (字符串当中下标为2的字符为c，下标从0开始)
    NSLog(@"打印：%C",[str5 characterAtIndex:3]); // 我  (字符串当中下标为2的字符为c，下标从0开始)
    
    //PS: 如果是打印char类型用%c，如果是打印unichar类型用%C。unichar占两个字节，可以打印中文。
    
    
    NSString *str6 = @"123";
    NSString *str7 = @"345";
    if ([str6 isEqualToString:str7]) {
        NSLog(@"YES");
    }else{
        NSLog(@"NO");
    }
    
    
    
    NSString *str8 = @"China";
    NSString *str9 = @"Japan";
    int i = [str8 compare:str9];
    NSLog(@"打印：%d",i); //打印：-1
    
    
    return 0;
}
