//3. Write a C++ program to create a class called Car that has private member variables for company, model, and year. Implement member functions to get and set these variables.

#include<iostream>
using namespace std;
class car{
    private:
    string company;
    string model;
    int year;
    public:
    void setcompany(string c){
        cout <<"enter name of car company : ";
        cin>>c;
         company =c;
    }
    void setmodel(string m){
        cout<<"enter car model :";
        cin>>m;
        model =m;
    }
    void setyear(int y){
        cout<<"enter car year :";
        cin>>y;
        year =y;
    }
    string getcompany(){
        return company;
    }
    string getmodel(){
        return model;
    }
    int getyear(){
        return year;
    }

};
 int main(){
    car c;
    c.setcompany("BMW");
    c.setmodel("corolla");
    c.setyear(2020);
    cout<<"company :"<<c.getcompany()<<endl;
    cout<<"model : "<<c.getmodel()<<endl;
    cout<<"year :"<<c.getyear()<<endl;
 }