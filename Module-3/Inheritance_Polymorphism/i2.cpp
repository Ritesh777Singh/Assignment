// 2. Write a C++ Program to find Area of Rectangle using inheritance

#include<iostream>
using namespace std;
class shape{
     public:
     int length,width;
     void input(){
        cout<<"enter length : ";
        cin>>length;
        cout<<"enter  width : ";
        cin>>width;
     }
};
class rectangle :public shape{
   public:
   int Area(){
    int area;
    area=length*width;
    cout<<"area of rectangle : "<<area;
   }
};
int main(){
    rectangle rec;
    rec.input();
    rec.Area();
}