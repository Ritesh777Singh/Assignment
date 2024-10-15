//5. Write a C++ program to create a class called Triangle that has private member variables for the lengths of its three sides. Implement member functions to determine if the triangle is equilateral, isosceles, or scalene.

#include<iostream>
using namespace std;
class Triangle{
  private:
  double side1,side2,side3;
  public:
    Triangle(){
    cout<<"enter the first side :";
    cin>>side1;
   
    cout<<"enter the second side : ";
    cin>>side2;
    
    cout<<"enter the  three side : ";
    cin>>side3;
    

  }
  void checktype(){
     if (side1==side2 && side2==side3)
         cout<<"equilateral triangle : ";
         else if (side1 == side2 || side1==side3 || side2==side3)
         cout<<"isosceles triangle : ";
         else
         cout<<"scalene triangle : ";

  }
};
int main(){
    Triangle t ;
    t.checktype();
}