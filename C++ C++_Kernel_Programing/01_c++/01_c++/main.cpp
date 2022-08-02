//
//  main.cpp
//  01_c++
//
//  Created by Aron Ruan on 2022/8/2.
//



#include <iostream>
/*
 C++内存划分
          代码区 函数的二进制代码
          全局区 全局变量、静态变量、常量
          栈区   函数值、局部变量（由编译器释放）
          堆区   （由程序员分配释放）
 
 1.1 程序运行前
 代码区——共享（内存只有一份）+只读（防止程序意外修改了他的指令）
 全局区——全局变量+静态变量+常量区:字符串常量和其他常量（该区域数据在程序结束后os释放）
 
 */
int g_a = 10;
int g_b = 10;
const int c_g_a = 10;
const int c_g_b = 10;

void test1()
{
    
    int a = 10;
    int b = 10;
    
    std::cout<<"局部变量a地址为:"<<&a<<std::endl;
    std::cout<<"局部变量a地址为:"<<&b<<std::endl;
    
    std::cout<<"全局变量g_a地址为："<<&g_a<<std::endl;
    std::cout<<"全局变量g_b地址为："<<&g_b<<std::endl;
    
    static int s_a =10;
    static int s_b = 10;
    
    std::cout<<"静态变量g_a 地址为 ："<<&s_a <<std::endl;
    std::cout<<"静态变量g_b 地址为 ："<<&s_b <<std::endl;
    
    std::cout<<"字符串常量地址为:"<< &"helloworld"<<std::endl;
    std::cout <<"字符串常量地址为 ："<<&"hello world2" <<std::endl;
//    static std::string str_a = "helloa";
//    static std::string str_b = "hellob";
//    std::cout<<"字符串常量str_a地址为:"<< &str_a<<std::endl;
//    std::cout <<"字符串常量str_b地址为 ："<<&str_b <<std::endl;
    
    std::cout<<"全局常量c_g_a地址为："<<&c_g_a<<std::endl;
    std::cout<<"全局常量c_g_b地址为："<<&c_g_b<<std::endl;
    
    const int c_l_a = 10;
    const int c_l_b = 10;
    
    std::cout <<"局部常量c_l_a地址为:"<<&c_l_a <<std::endl;
    std::cout <<"局部常量c_l_a 地址为："<<&c_l_b <<std::endl;
}
//程序运行后
int *func1()
{//栈区
    int a =10;
    return &a;
}
int* func2()
{//堆区
    int *a = new int(10);
    return a;
}
void test2()
{
//    int *p = func1();
    int *p = func2();
    delete p;
    std::cout<<*p<<std::endl;
    std::cout<<*p<<std::endl;
    std::cout<<p<<std::endl;
    
}
void test3()
{
    int *arr = new int[10];
    for(int i=0;i<10;i++)
    {
        arr[i] = i+100;
    }
    delete[] arr;
    for(int i=0;i<10;i++)
    {
        std::cout<<arr[i] <<std::endl;
    }
//    delete[] arr;
}

int main(int argc, const char * argv[]) {
//    test1();
//    test2();
    test3();
    return 0;
}

