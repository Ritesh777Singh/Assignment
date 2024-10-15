// 10.Write a program to concatenate the two strings using Operator Overloading

#include<iostream>
using namespace std;
class concat{
  string str;
  public:
  concat(string s):str(s){}
  concat operator+(concat &s){
    return concat(str+s.str);

  }
  void display(){
    cout<<str<<endl;
  }
};
int main(){
    concat s("hello "),s2("world");
    concat result=s+s2;
    result.display();

}