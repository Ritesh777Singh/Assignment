/*3. Create a class person having members name and age. Derive a class student
having member percentage. Derive another class teacher having member
salary. Write necessary member function to initialize, read and write data.
Write also Main function (Multiple Inheritance)*/

#include<iostream>
using namespace std;
class Person{
    public:
    string name;
    int age;
    void inputperson(){
        cout<<"enter name :";
        cin>>name;
        cout<<"enter age : ";
        cin>>age;
    }
    void displayperson(){
        cout<<"name : "<<name<<endl <<"age : "<<age<<endl;
    }

};
class student : virtual public Person {
    public:
    float percentage;
    void inputstudent(){
        cout<<"enter percentage : ";
        cin>>percentage;
    }
    void displaystudent(){
        cout<<"percentage : "<<percentage<<endl<<endl;
    }
};
class teacher : virtual public Person{
    public:
    float salary;
    void inputteacher(){
        cout<<"enter salary :";
        cin>>salary;

    }
    void displayteacher(){
        cout<<"salary : "<<salary<<endl;
    }
};
int main(){
    student s;
    teacher t;
    s.inputperson();
    s.inputstudent();
    s.displayperson();
    s.displaystudent();
    cout<<"enter teacher data "<<endl;
    t.inputperson();
    t.inputteacher();
    t.displayperson();
    t.displayteacher();
    
}

