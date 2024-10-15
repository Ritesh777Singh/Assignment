/* 5. Assume that the test results of a batch of students are stored in three different
classes. Class Students are storing the roll number. Class Test stores the
marks obtained in two subjects and class result contains the total marks
obtained in the test. The class result can inherit the details of the marks
obtained in the test and roll number of students. (Multilevel Inheritance)*/

#include <iostream>
using namespace std;
class student{
    public:
    int rollno;
    void inputrollno(){
        cout<<"enter Roll no : ";
        cin>>rollno;
    }
};
class test : public student{
    public:
    int sub1,sub2;
    void inputmarks(){
        cout<<"enter marks for subject 1 : ";
        cin>>sub1;
        cout<<"enter marks for subject 2 : ";
        cin>>sub2;

    }
};
class result : public test{
     public:
     void showResult(){
        int total;
        total=sub1+sub2;
        cout<<"Roll no :"<<rollno<<"\nsubject 1:"<<sub1<<"\nsubject 2:"<<sub2<<endl;
        cout<<"Total Marks : "<<total<<endl;
     }
};
int main(){
    result r;
    r.inputrollno();
    r.inputmarks();
    r.showResult();
}