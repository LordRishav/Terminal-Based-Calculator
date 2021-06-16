#include <iostream>
#include <functional>
#include <cmath>
#include <fstream>
#include "NewCalcFunctions.h"
double total_num;
int end_option;
int option;
bool loop = true;
int main()
{
    while (loop)
    {
        std::cout << "Please select an option from the list:\n";
        std::cout << "1: Add | 2: Subtract | 3: Divide | 4: Multiply | 5: Square root \n";
        std::cin >> option;
        switch (option)
        {
        case 1:
            total_num = math("Addition", std::plus<>(), false);
            std::cout << total_num << '\n';
            break;
        case 2:
            total_num = math("Subtraction", std::minus<>(), false);
            std::cout << total_num << "\n";
            break;
        case 3:
            total_num = math("Division", std::divides<>(), false);
            std::cout << total_num << "\n";
            break;
        case 4:
            total_num = math("Multiplication", std::multiplies<>(), false);
            std::cout << total_num << "\n";
            break;
        case 5:
            total_num = square_root("Square root", false);
            std::cout << total_num << "\n";
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
                total_num = math("Add", std::plus<>(), true);
                std::cout << total_num << '\n';
                break;
            case 2:
                total_num = math("Subtract", std::minus<>(), true);
                std::cout << total_num << "\n";
                break;
            case 3:
                total_num = math("Divide", std::divides<>(), true);
                std::cout << total_num << "\n";
                break;
            case 4:
                total_num = math("Multiply", std::multiplies<>(), true);
                std::cout << total_num << "\n";
                break;
            case 5:
                total_num = square_root("Square root", true);
                std::cout << total_num << "\n";
                break;
            }
        }
        else if (end_option == 3)
        {
            loop = false;
        }
    }
}