// Includes the standard input/output library
#include <iostream>
#include "mylib.hpp"


// main function: the entry point of the program
int main() {
    // prints "Hello, Henrique!" to the console
    std::cout << "Hello, Henrique!" << std::endl;

    //Using add function to add 4 and 8 and print the result
    std::cout << "4 + 8 = " << mylib::add(4, 8) << std::endl;

    // When we are done, we return 0 to the operating system
    return 0;
}
