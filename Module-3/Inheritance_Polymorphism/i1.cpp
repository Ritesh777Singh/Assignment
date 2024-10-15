/*1. Assume a class cricketer is declared. Declare a derived class batsman from
cricketer. Data member of batsman. Total runs, Average runs and best
performance. Member functions input data, calculate average runs, Display
data. (Single Inheritance)*/

#include<iostream>
using namespace std;
class cricketer{
    private:
    string name;
    int matches;
    public:
    void getdata(){
        cout<<"enter the cricketer name  : ";
        cin>>name;
        cout<<"enter the matches  : ";
        cin>>matches;
    }

};
class batsman : public cricketer {
    int total_run;
    float average_run;
    int best_performance;

    public:
    void getdata(){
        cricketer::getdata();
    cout<<"enter total runs : ";
    cin>>total_run;
    cout<<"enter best performance : ";
    cin>>best_performance;
    Average_run();

    }
    void Average_run(){
        average_run=total_run/20;
        cout<<"total average  : "<<average_run;
    }
};
int main(){
    batsman ba;
    ba.getdata();
}
