//
//  main.m
//  FileManager
//
//  Created by 朱勇 on 2020/12/2.
//  Copyright © 2020 朱勇. All rights reserved.
//

/*

1、多文件管理

   一个类要写到一个模块当中，一个模块至少包含两个文件：
   1). 头文件 .h    ---->  类的声明
   2). 实现文件.m   ---->  类的实现

2、创建方式
 
    a.先创建.h声明文件，即头文件；再创建.m实现文件。
    b.创建Cocoa文件（Cocoa class），同时生成.h和.m文件。


*/


#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];
    [p sayHi];
    
    return 0;
}
