// Includes the standard input/output library
#include <iostream>

// Declares a simple function that adds two integers
int add(int val_a, int val_b) {
    return val_a + val_a; // results of the addition
}

// main function: the entry point of the program
int main() {
    // prints "Hello, Henrique!" to the console
    std::cout << "Hello, Henrique!" << std::endl;

    //Using add function to add 4 and 8 and print the result
    std::cout << "4 + 8 = " << add(4, 8) << std::endl;

    // When we are done, we return 0 to the operating system
    return 0;
}
