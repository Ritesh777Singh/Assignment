/*6. Write a C++ program to implement a class called Employee that has
private member variables for name, employee ID, and salary. Include
member functions to calculate and set salary based on employee
performance. Using of constructor */

#include<iostream>
using namespace std;
class employee{
    private:
    string name;
    int employeeID;
    float salary;
    public:
    employee(){
    cout <<"enter Name : ";
    cin>>name;
    cout<<"enter Employee ID : ";
    cin>>employeeID;
    cout<<"enter employee salary :";
    cin>>salary;
    }
    void setperformance( char grade){
        if (grade == 'A'){
            salary *=1.2;


        }else if (grade =='B'){
            salary *=1.1;
        }
        cout<<"updated salary : "<<salary;

    }
    
};
int main(){
    char grade;
    employee emp;
     cout<<"enter performance ";
     cin>>grade;
    emp.setperformance(grade);
}