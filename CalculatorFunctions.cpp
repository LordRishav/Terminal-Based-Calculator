#include "NewCalcFunctions.h"
#include <iostream>
#include <functional>
#include <cmath>
#include <fstream>
using namespace std;
double math(std::string text, std::function<double(double, double)> code, bool use_last_num)
{
    double total_num;
    double num1;
    double num2;
    std::ofstream num_write;
    num_write.open("last-total-num.txt", ios::out);
    if (!use_last_num)
    {
        std::cout << text << "\n";
        std::cout << "Please enter in the first number here: \n";
        std::cin >> num1;
        std::cout << "Please enter in the last number here: \n";
        std::cin >> num2;
        total_num = code(num1, num2);
        num_write << total_num;
        num_write.close();
    }
    else
    {
        num_write << total_num;
        num_write.close();
        std::ifstream num_read;
        num_read.open("last-total-num.txt", ios::in);
        double last_num;
        num_read >> last_num;
        total_num = 0;
        std::cout << text << "\n";
        std::cout << "Fetching last number...\n";
        std::cout << "Please enter the number here: \n";
        std::cin >> num2;
        total_num = code(num2, last_num);
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
    }
    else
    {
        std::ifstream num_read;
        num_read.open("last-total-num.txt", ios::in);
        double last_num;
        num_read >> last_num;
        total_num = sqrt(last_num);
    }
    return total_num;
}