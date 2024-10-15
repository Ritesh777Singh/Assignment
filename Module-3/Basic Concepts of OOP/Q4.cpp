 //4. Write a C++ program to implement a class called Circle that has private member variables for radius. Include member functions to calculate the circle's area and circumference.
 #include<iostream>
 using namespace std ;
 class circle{
    private:
    float radius,area,cf ,pi=3.14;
     public:
     float getarea(){
        cout<<"enter the radius : ";
        cin>>radius;
        area=pi*radius*radius;
        cf=2*pi*radius*radius;
     }
     void display(){
        cout<<"circle of area : "<<area<<endl;
        cout<<"circumference of area : "<<cf<<endl;

     }
 };
 int main(){
    circle ci;
    ci.getarea();
    ci.display();
 }