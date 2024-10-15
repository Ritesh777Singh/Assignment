/*8. Write a C++ program to implement a class called Student that has private
member variables for name, class, roll number, and marks. Include
member functions to calculate the grade based on the marks and display
the student's information. Accept address from each student implement
using of aggregation */

#include<iostream>
using namespace std;
class Address{
    public:
    string street;
    string city;
    string state;
    string zipcode;
    Address(string s ,string c, string st, string z){
        street=s;
        city=c;
        state=st;
        zipcode=z;
    }
    void display(){
         cout << street << ", " << city << ", " << state << ", " << zipcode << endl;
    }

};
class student{
    private:
    string name;
    string classname;
    int rollnumber;
    int marks;
    Address* add;
    public:
    student(string n, string cn, int rn,int m,Address* add){
        this->name=n;
        this->classname=cn;
        this->rollnumber=rn;
        this->marks=m;
        this->add=add;}
        
        char calculategrade(){
            if (marks >=90)
            return 'A';
            else if (marks >=80)
            return 'B';
            else if (marks >=70)
            return 'C';
            else
            return 'D';
            
        }
        void display(){
            cout<<"Naem: "<<name<<endl;
            cout<<"Class: "<<classname<<endl;
            cout<<"Roll Number: "<<rollnumber<<endl;
            cout<<"Marks: "<<marks<<endl<<"Grede: "<<calculategrade()<<endl;
            cout<<"Address: ";
           add-> display();
        }
};
int main(){
    Address addr("142 street","new","ny","394210");
    student stu("s","9th",90,85,&addr);
    stu.display();
}

