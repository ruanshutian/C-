#include<iostream>

int *func()
{
    int a =10;
    return &a;
}
int main()
{
    int *p =func();

    std::cout<<*p <<std::endl;
    std::cout<<*p<<std::endl;


    return 0;
}