//1. WAP to create simple calculator using class
#include<iostream>
#include<cmath>
using namespace std;
class calculator{

    public:
    float a,b,add,sub,multi,div;
    public:
    float get_num(){
        cout<<"enter the number1 : ";
        cin>>a;
        cout<<"enter the number2 : ";
        cin>>b;
        add=a+b;
        sub=a-b;
        multi=a*b;
        div=a/b;


    }
    void cal_show(){
    
        cout<<"add the number : "<<add<<endl;
        cout<<"sub the number : "<<sub<<endl;
        cout<<"multi number : "<<multi<<endl;
        cout<<"div number : "<<div<<endl;
    }
};
int main(){
    calculator ca;
    ca.get_num();
    ca.cal_show();
}