//6. Write a C++ Program to show access to Private Public and Protected using Inheritance

#include<iostream>
using namespace std;
class A{
    private:
    int a;
    protected:
    int b;
    public:
    int c;

    void input_P(){
       cout<<"enter a number : ";
       cin>>a;
       cout<<"enter b number : ";
       cin>>b;
       cout<<"enter c number : ";
       cin>>c;
    }
};
class B : public A{
public:
void show_b(){
//  cout<<"Private var :"<<a;
    cout<<"Protected var :"<<b<<"Public var :"<<c;

}
};
int main(){
    B b;
    b.input_P();
    b.show_b();
}