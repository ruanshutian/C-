//
//  main.cpp
//  02_c++
//
//  Created by Aron Ruan on 2022/8/2.
//

#include <iostream>
void test1()
{
    int a =10;
    int &b =a;
    
    std::cout <<"a = "<<a <<std::endl;
    std::cout <<"b = "<<b <<std::endl;
    
//    b =100;
    a = 1000;
    
    std::cout <<"a = " <<a <<std::endl;
    std::cout<< "b = "<<b <<std::endl;
    
}
int main(int argc, const char * argv[]) {
    // insert code here...
    test1();
    return 0;
}
