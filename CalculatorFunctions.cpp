#include <iostream>
#include <functional>
#include <cmath>
#include <fstream>
#include "CalculatorFunctions.h"
using namespace std;
static double ans = 0;
bool loop2 = true;
double math(std::string text, std::function<double(double, double)> code, bool use_last_num, std::string math_symbol)
{
    double total_num = 0;
    double num1 = 0;
    double num2 = 0;
    if (!use_last_num)
    {
        std::cout << text << "\n";
        std::cout << "Please enter in the first number here: \n";
        std::cin >> num1;
        std::cout << "Please enter in the last number here: \n";
        std::cin >> num2;
        total_num = code(num1, num2);
        ans = total_num;
        std::cout << "\n";
        std::cout << num1 << math_symbol << num2 << " = " << total_num << "\n";
        std::cout << "\n";
    }
    else
    {
            std::cout << text << "\n" << "\n";
            std::cout << "Fetching last number...\n";
            std::cout << ans << "\n";
            std::cout << "Please enter the number here: \n";
            std::cin >> num2;
            total_num = code(num2, ans);
            std::cout << "\n";
            std::cout << ans << math_symbol << num2 << " = " << total_num << "\n";
            std::cout << "\n";
    }
    return total_num;
}
double square_root(std::string text, bool use_last_num)
{
    double total_num;
    if (!use_last_num)
    {
        std::cout << text << '\n';
        std::cout << "Please enter the number you would like to find the square root of here: \n";
        double sqrt_num;
        std::cin >> sqrt_num;
        total_num = sqrt(sqrt_num);
        ans = total_num;
        std::cout << "The square root of " << sqrt_num << " = " << total_num << "\n";
        std::cout << "\n";
    }
    else
    {
        total_num = sqrt(ans);
        std::cout << "The square root of " << ans << " = " << total_num;
    }
    return total_num;
}