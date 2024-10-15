//7. Write a C++ Program to illustrates the use of Constructors in multilevel inheritance


#include <iostream>
using namespace std;
class grandfather{
    public:
    string g_name;
    int g_age;
    grandfather(){
        cout<<"Enter Grand Father Name:";
        cin>>g_name;
        cout<<"Enter Grand Father Age:";
        cin>>g_age;
    }
};
class father :public grandfather{
    public:
    string f_name;
    int f_age;
    father(){
        cout<<"Enter Father Name:";
        cin.ignore();
        getline(cin,f_name);
        cout<<"Enter Father Age:";
        cin>>f_age;
    }
};
class Child : public father{
    public:
    string c_name;
    int c_age;
    Child(){
        cout<<"Enter Child Name:";
        cin>>c_name;
        cout<<"Enter Child Age:";
        cin>>c_age;
        cout<<endl;
    }
};
int main(){
    Child c1;
    cout<<"GrandFather Name:"<<c1.g_name<<endl;
    cout<<"GrandFather Age:"<<c1.g_age<<endl;
    cout<<endl;
    cout<<"Father Name :"<<c1.f_name<<endl;
    cout<<"Father Age:"<<c1.f_age<<endl;
    cout<<endl;
    cout<<"Child Name:"<<c1.c_name<<endl;
    cout<<"Child Age:"<<c1.c_age<<endl;
}


