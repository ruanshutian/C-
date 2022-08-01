//
//  main.m
//  01_oc_question
//
//  Created by Aron Ruan on 2022/8/1.
//

#import <Foundation/Foundation.h>
//1. OC 系统对象的 copy 与 mutableCopy 方法
/*
              不可变对象    可变对象
        copy—— 指针复制     内容复制
 mutableCopy—— 内容复制     内容复制
 
 【总结一句话】： 只有对不可变对象进行copy操作是指针复制（浅复制），其它情况都是内容复制（深复制）
               集合对象的内容复制仅限于对象本身，对集合内的对象元素仍然是指针复制
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        非集合对象
        NSString *str = @"hello world ";
        NSString *strCopy = [str copy];
        NSMutableString *strMCopy = [str mutableCopy];
        NSLog(@"==================================");
        NSLog(@" \n str 地址 = %p",str);
        NSLog(@" \n strCopy 地址 = %p",strCopy);
        NSLog(@" \n strMCopy 地址 = %p",strMCopy);
        
        NSMutableString*mutableStr = [NSMutableString stringWithFormat:@"hello world"];
        NSString*strCopy2 = [mutableStr copy];
        NSMutableString*strMCopy2 = [mutableStr mutableCopy];
        NSLog(@"==================================");
        NSLog(@" \n str 地址 = %p",mutableStr);
        NSLog(@" \n strCopy 地址 = %p",strCopy2);
        NSLog(@" \n strMCopy 地址 = %p",strMCopy2);
//        集合对象
        NSArray*arr = @[@[@"a",@"b"],@[@"c"],@[@"d"]];
        NSArray*copyArr = [arr copy];
        NSMutableArray*mCopyArr = [arr mutableCopy];
        NSLog(@"==================================");
        NSLog(@" \n arr 地址 = %p",arr);
        NSLog(@" \n copyArr 地址 = %p",copyArr);
        NSLog(@" \n mCopyArr 地址 = %p",mCopyArr);
        
        NSMutableArray*array = [NSMutableArray arrayWithObjects:
                                    [NSMutableString stringWithFormat:@"a"],@"b",@"c", nil
        ];
        NSArray*copyArr2 = [mutableStr copy];
        NSMutableArray*mCopyArr2 = [mutableStr mutableCopy];
        NSLog(@"==================================");
        NSLog(@" \n array 地址 = %p",array);
        NSLog(@" \n copyArr2 地址 = %p",copyArr2);
        NSLog(@" \n mCopyArr2 地址 = %p",mCopyArr2);
        

    }
    return 0;
}
