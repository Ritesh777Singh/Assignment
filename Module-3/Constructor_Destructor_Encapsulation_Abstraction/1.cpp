//1. Write a program to find the multiplication values and the cubic values using inline function
#include<iostream>
using namespace std;
 inline int multiply(int num1,int num2){
    return num1*num2;
 }
 inline int cube(int num){
    return num*num*num;
 }
 int main(){
    int num1,num2;
    cout<<"enter first number : ";
    cin>>num1;
    cout<<"enter second number : ";
    cin>>num2;
    cout<<"multiplication : "<<multiply(num1,num2)<<endl;
    cout<<"cube of first number :"<<cube(num1)<<endl;
    cout <<"cube of second number : "<<cube(num2)<<endl;
 }