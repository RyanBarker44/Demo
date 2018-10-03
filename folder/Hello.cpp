/**
 * @file Hello.cpp
 * @author My Self
 * @date 5 August 2017
 * @brief Very simple example of a C++ program.
 *
*/
#include <iostream>
#include "MyClassTest.h"

int main(void)
{
	std::cout << "Hello class" << std::endl;

	MyClassTest *person = new MyClassTest();

	std::cout << "The age is " << person->new_age() << std::endl;

	return 0;
}
