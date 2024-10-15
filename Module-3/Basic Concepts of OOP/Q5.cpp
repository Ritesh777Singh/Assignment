//5. Write a C++ program to create a class called Rectangle that has private member variables for length and width. Implement member functions to calculate the rectangle's area and perimeter.
#include<iostream>
using namespace std;
class rectangle{
    private:
    int length,width,area;
    public:
    int getrect(){
        cout<<"enter length : ";
        cin>>length;
        cout<<"enter width : ";
        cin>>width;
        area=length*width;
    }
    void display(){
        cout<<"rectangle of area : "<<area;
    }
};
int main(){
    rectangle rec;
    rec.getrect();
    rec.display();

}