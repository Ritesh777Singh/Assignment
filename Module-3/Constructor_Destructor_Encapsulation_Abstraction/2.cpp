//2. Write a program of Addition, Subtraction, Division, Multiplication using constructor
#include<iostream>
using namespace std;
class calculator{
private:
   int a,b;
public:
   calculator(int x , int y){
    a=x;
    b=y;

    }
    void add(){
        cout<<"addition :"<<a+b<<endl;

    }
    void sub(){
        cout<<"subtraction : "<<a-b<<endl;

    }
    void multi(){
        cout<<"multiply : "<<a*b<<endl;

        }
    void div(){
        if(b !=0)
        cout<<"diviaion : "<<a/b<<endl;
        else
        cout<<"division by zero in not allowed ";
    }
};
int main(){
    int x,y;
    cout<<"enter first number :";
    cin>>x;
    cout<<"enter second number : ";
    cin>>y;
    calculator cal(x,y);
    cal.add();
    cal.sub();
    cal.multi();
    cal.div();

}