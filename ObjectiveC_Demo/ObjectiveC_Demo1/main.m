//
//  main.m
//  ObjectiveC_Demo1
//
//  Created by 朱勇 on 2020/11/26.
//  Copyright © 2020 朱勇. All rights reserved.
//

/**
 
 1、#import指令：#include的 增强版
 
    #import 后面是用尖括号还是双引号取决于是不是系统类，如果是系统类则是尖括号<>，自定义的类是双引号。
 
 2、Foundation框架：
    a.基础、基本的输入输出，基本数据类型等；
    b.Foundation.h文件中包含了Foundation框架中其他所有的头文件。
 
 3、@autoreleasepool：自动释放池
 
 4、NSLog函数：
    a.print函数的增强版，向控制台输出信息；
    b.语法：NSLog(@"格式控制字符串",变量列表);    最简单的语法：NSLog(@"要输出的字符串");
 
    c.增强：
            1).2020-11-26 13:13:11.940995+0800 ObjectiveC_Demo1[11955:133137] Hello, World!
                 程序执行的时间-------------------程序的名称----------进程编号-线程编号---输出的信息
            2).自动换行
    d.用法
        1).
            float f = 1.12f;
            NSLog(@"输出f:%f",f);
            打印：输出f:1.120000
        2).
            NSString *str = @"要输出的字符串";
            NSLog(@"输出：%@",str);
            打印：输出：要输出的字符串
            
    e.注意事项：
        1).第一个参数前面必须要加一个@符号。
        2).在最后面加'\n'会导致NSLog本身的换行功能失效：NSLog(@"Hello, World!\n");
 
 5、NSString字符串
        a.OC的字符串常量必须要用一个@前缀符号。
            "jack":C语言字符串
            @"jack":OC字符串
 
            NSString *str = @"jack";
        b.%@占位符：输出str：NSLog(str); ----------  NSLog(@"输出：%@",str);
 
 6、NS前缀
    NextStep ---> Cocoa ---> Foundation框架 (为了区分类的来源，所以加NS表示来自NextStep)
 
 
 7、@符号：
    a.把C字符串转为OC字符串
        "jack"  @"jack"
    b.OC当中绝大部分关键字都是以@开头
        @public、@autoreleasepool
 
 
 8、函数的定义与调用：先声明，再实现，再调用。
 
 
 9、类的定义
    1). 位置：
        直接写在源文件中，不要写在main函数中。
 
    2). 类的定义分为两个部分：类的声明和类的实现
 
        a.类的声明：
            @interface 类名 : NSObject {
                
                //这里写：这类事物具有的共同的特征，定义为变量
 
            }
            
            //这里写：函数
 
            @end
 
        a.类的实现：
            @implementation 类名
             
            //这里写：方法的实现

            @end
 
    3). 注意事项：
        a.类的声明和实现必须同时存在
        b.类名大驼峰
        c.大括号中定义属性变量：属性 or 成员变量 or 实例变量
        d.属性名以下划线开头【规范】
        
 
10、如何创建对象？
    语法：类名 *对象名 = [类名 new];
        Person *p = [Person new];
 
11、如何使用对象？
    
    访问对象的属性：
    默认情况下，对象的属性是不允许被外界访问的，如要要访问需要在属性的上面加关键字：@public
 
    访问对象属性的方式：
    赋值set：  对象名->属性名 = 值;    p->name = @"jack";
    获取值get：对象名->属性名;         p->name;
 
    或者：(*p).name = @"jack"; （不常用）
    
 
12、类当中的方法
 
    ----------------------无参方法的声明、实现、调用-----------------------------------
 
    1).方法的声明
        位置：在@interface的大括号外面，@end之前。
        语法：声明一个无参数的方法:
            - (返回值类型) 方法名称;
            - (void) run;
        
    2).方法的实现
        位置：在@implementation和@end之间。
        语法：把声明的方法的分号;去掉，换成大括号即可。
            - (返回值类型) 方法名称{
                //代码块
            }
 
            -(void) run{
                NSLog(@"我开始奔跑了");
            }
 
    3).方法的调用
        // 对象调用方法
        语法：[对象名 方法名];
             [p run];

    ----------------------带一个参数的方法的声明、实现、调用-----------------------------------
 
    1).方法的声明
        语法：
        - (返回值类型) 方法名称:(参数类型)形参名称;
        - (void) setName:(NSString*)name;
 
        ps：方法名是：setName:
 
    2).方法的实现
        语法：
            - (返回值类型) 方法名称:(参数类型)形参名称{
                //代码块
            }
 
            -(void) setName:(NSString *)name{
                NSLog(@"我开始吃东西了，我在吃%@",name);
            }
    
    3).方法的调用
        语法：[对象名 方法名:实参];
             [p setName:@"汉堡包"];
 
    PS：方法头中的参数类型都需要用小括号括起来。


    ----------------------带多个参数的方法的声明、实现、调用-----------------------------------

    1).方法的声明
        语法：
            - (返回值类型) 方法名称:(参数类型)形参名称1 :(参数类型)形参名称2 :(参数类型)形参名称3;
            -(int)sum:(int)number1 :(int)number2;
            ps：方法名是：sum: :
            -(int)sum:(int)number1 and:(int)number2;
            ps：方法名是：sum: and:
    
    2).方法的实现
        语法：
             - (返回值类型) 方法名称:(参数类型)形参名称1 :(参数类型)形参名称2 :(参数类型)形参名称3{
                 //代码块
             }
 
            -(int)sum:(int)number1 :(int)number2{
                int sum = number1+number2;
                return sum;
            }
 
    3).方法的调用
        语法：[对象名 方法名:实参1 :实参2 :实参3];
             int sum = [p sum:1 :2];
 
 */


#import <Foundation/Foundation.h>



@interface Person : NSObject{
    @public
    NSString *name;
    
    int age;
    float height;
}

-(void) run;
- (void) setName: (NSString*) name;
-(int)sum:(int)number1 :(int)number2;
-(int)sum:(int)number1 and:(int)number2;

@end

@implementation Person
 
-(void) run{
    NSLog(@"我开始奔跑了");
}

-(void) setName:(NSString *)name{
    NSLog(@"我开始吃东西了，我在吃%@",name);
}

-(int)sum:(int)number1 :(int)number2{
    int sum = number1+number2;
    return sum;
}

-(int)sum:(int)number1 and:(int)number2{
    int sum = number1+number2;
    return sum;
}

@end

//函数的声明
void printMyLog();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"Hello, World!\n");
//        NSLog(@"Hello, World!");
        
//        printMyLog();
//
//        float f = 1.12f;
//        NSLog(@"输出f:%f",f);
//
//        NSString *str = @"要输出的字符串";
//        NSLog(@"输出：%@",str);
        
//        NSString *str = @"jack";
//
//        BOOL  bl =YES;
//        NSLog(@"输出：%b",bl);
        
        
        Person *p = [Person new];
        
//        NSLog(@"输出name：%@",p->name);
//        p->name = @"jack";
//        (*p).name = @"jack";
//        NSLog(@"输出name：%@",p->name);
//
//        NSLog(@"输出age：%i",p->age);
//        (*p).age = 18;
//        NSLog(@"输出age：%i",(*p).age);
        
//        [p run]; //我开始奔跑了
//        [p setName:@"汉堡包"]; //我开始吃东西了，我在吃汉堡包
//        int sum1 = [p sum:1 :2];
//        int sum2 = [p sum:1 and:2];
//        NSLog(@"sum1 number1 + number2 = %i",sum1); //sum1 number1 + number2 = 3
//        NSLog(@"sum2 number1 + number2 = %i",sum2); //sum2 number1 + number2 = 3
        
    }
    return 0;
}

//函数的实现
void printMyLog(){
    NSLog(@"This is Objective-C language.");
}
