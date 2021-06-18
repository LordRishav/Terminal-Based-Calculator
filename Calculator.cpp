#include <iostream>
#include <functional>
#include <cmath>
#include <fstream>
#include "CalculatorFunctions.h"
double total_num;
int end_option;
int option;
int main()
{
    bool loop = true;
    while (loop)
    {
        std::cout << "Please select an option from the list:\n";
        std::cout << "1: Add | 2: Subtract | 3: Divide | 4: Multiply | 5: Square root \n";
        std::cout << "\n";
        std::cin >> option;
        std::cout << "\n";
        switch (option)
        {
        case 1:
            total_num = math("Addition", std::plus<>(), false, " + ");
            break;
        case 2:
            total_num = math("Subtraction", std::minus<>(), false, " - ");

            break;
        case 3:
            total_num = math("Division", std::divides<>(), false, " / ");

            break;
        case 4:
            total_num = math("Multiplication", std::multiplies<>(), false, " X ");
            break;
        case 5:
            total_num = square_root("Square root", false);
            break;
        }
        std::cout << "Please choose an option from the list:" << '\n';
        std::cout << "1: Continue | 2: Conitnue with number from last problem | 3: Exit the program" << '\n';
        std::cin >> end_option;
        if (end_option == 1)
        {
            loop = true;
        }
        else if (end_option == 2)
        {
            std::cout << "Please select an option from the list:\n";
            std::cout << "1: Add | 2: Subtract | 3: Divide | 4: Multiply | 5: Square root \n";
            int option2;
            std::cin >> option2;
            switch (option2)
            {
            case 1:
                total_num = math("Add", std::plus<>(), true, " + ");
                break;
            case 2:
                total_num = math("Subtract", std::minus<>(), true, " - ");
                break;
            case 3:
                total_num = math("Divide", std::divides<>(), true, " / ");
                break;
            case 4:
                total_num = math("Multiply", std::multiplies<>(), true, " X ");
                break;
            case 5:
                total_num = square_root("Square root", true);
                break;
            }
        }
        else if (end_option == 3)
        {
            loop = false;
        }
    }
}