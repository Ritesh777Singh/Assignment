// 6. Write a C++ program to create a class called Person that has private member variables for name, age and country. Implement member functions to set and get the values of these variables.
#include<iostream>
#include <string>
using namespace std;
class person{
    private:
    string name;
    int age;
    string country;
    public:
    void setName(string personName){
        name = personName;
    }
    void  setAge(int personAge){
        age=personAge;

    }
    void setCountry(string personCountry){
        country=personCountry;
    }
    string getName(){
        return name;
    }
    int getAge(){
        return age;
    }
    string getCountry(){
        return country;
    }
    void showPersonInfo(){
        cout<<"Name : "<<name<<endl;
        cout<<"Age : "<<age<<endl;
        cout<<"Country : "<<country<<endl;
    }
};
int main(){
    person pe;
    pe.setName("hgfgh");
    pe.setAge(20);
    pe.setCountry("juh");
    pe.showPersonInfo();
}