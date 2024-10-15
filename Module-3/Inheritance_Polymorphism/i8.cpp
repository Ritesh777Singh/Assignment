/*8. Write a program to Mathematic operation like Addition, Subtraction,
Multiplication, Division Of two number using different parameters and
Function Overloading*/


#include<iostream>
using namespace std;
class mathematic{
    public:
    int math(int a,int b){
        cout<<"Addition :"<<a+b<<endl;
         cout<<"Subtraction :"<<a-b<<endl;
          cout<<"Multiplication :"<<a*b<<endl;
           cout<<"Division :"<<(float)a/b<<endl;
    }
    double math(double a,double b){
        cout<<"Addition :"<<a+b<<endl;
         cout<<"Subtraction :"<<a-b<<endl;
          cout<<"Multiplication :"<<a*b<<endl;
           cout<<"Division :"<<(float)a/b<<endl;
    }

};
int main(){
    mathematic ma;
    ma.math(1.0,2.0);
    cout<<" "<<endl;
    ma.math(5.0,10.0);
    
}
