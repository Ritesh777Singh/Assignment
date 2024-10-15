// 4. Write a C++ Program display Student Mark sheet using Multiple inheritance

#include<iostream>
using namespace std;
class Math{
     public: 
     int math;
     void inputmath(){
        cout<<"enter marks in math : ";
        cin>>math;
       
     }
};
class Physics{
    public:
    int physics;
    void inputphysics(){
     cout<<"enter marks in physics : ";
     cin>>physics;
    }
    
};
class Student : public Math, Physics{
         public:
         string name;
         int id,age;
         void inputstudent(){
            cout<<"enter student name : ";
            cin>>name;
            cout<<"enter student ID : ";
            cin>>id;
            cout<<"enter student age : ";
            cin>>age;
            inputmath();
            inputphysics();
         }
         void ShowMarksheet(){
            cout<<"Name : "<<name<<"\nMath : "<<math<<"\nPhysics : "<<physics<<endl;
            cout<<"Total marks :"<<(math+physics)<<endl;
         }
};
int main(){
Student s;
s.inputstudent();
s.ShowMarksheet();
}