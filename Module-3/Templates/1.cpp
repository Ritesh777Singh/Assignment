//1. Write a program of to swap the two values using template

#include <iostream>
using namespace std;

template <typename T>
void swapValues(T &a, T &b) {
    T temp;
    temp = a;
    a = b;
    b = temp;
}

int main() {
    int x ,y;
    cout<<"Enter Number: ";
    cin>>x>>y;
    cout << "Before Swap: x = " << x << ", y = " << y << endl;
    swapValues(x, y);
    cout << "After Swap: x = " << x << ", y = " << y << endl;


}