//
//  main.m
//  02_oc_question
//
//  Created by Aron Ruan on 2022/8/1.
//

#import <Foundation/Foundation.h>
//        2.浅拷贝和深拷贝的区别？
        /*
                  对象指针    对象本身
         浅拷贝——    1
         深拷贝——               1    ——内存中存在了两份独立对象本身，当修改A时，A_copy不变
         
         */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"hello world ";
        NSLog(@" \n str 地址 = %p ;str = %@",str,str);
        //前拷贝
        NSString *strCopy = [str copy];
        //深拷贝
        NSMutableString *strMCopy = [str mutableCopy];
        NSLog(@"==================================");
        str = @"hello world update";
        NSLog(@" \n str 地址 = %p ;str = %@",str,str);
        NSLog(@" \n strCopy 地址 = %p ;strCopy = %@ ",strCopy,strCopy);
        NSLog(@" \n strMCopy 地址 = %p ; strMCopy = %@ ",strMCopy,strMCopy);
        
        NSLog(@"==================================");
        NSString* strr = @"hello world";
        NSString* str1 = [strr copy];
        NSLog(@"strr:%p, str1:%p", strr, str1);
        
        strr = @"liyazhou";
        NSLog(@"strr:%@, str1:%@", strr, str1);
        NSLog(@"strr:%p, str1:%p", strr, str1);
        
    }
    return 0;
}
