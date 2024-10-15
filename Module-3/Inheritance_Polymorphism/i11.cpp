/*11.Write a program to calculate the area of circle, rectangle and triangle
using Function Overloading
Rectangle: Area * breadth
Triangle: ½ *Area* breadth
Circle: Pi * Area *Area*/

#include<iostream>
#define PI 3.14159
using namespace std;
class calculate{
    public:
    double area(double length,double breadth){
        return length *breadth;
    }
    double area(double base, double heigth,char){
        return 0.5*base*heigth;
    }
    double area(double radius){
        return PI*radius*radius;
    }

};
int main(){
    calculate cal;
  cout << "Area of Circle : " << cal.area(5) << endl;
    cout << "Area of Rectangle : " << cal.area(5, 10) << endl;
    cout << "Area of Triangle : " << cal.area(6, 8,'o' ) << endl;

}