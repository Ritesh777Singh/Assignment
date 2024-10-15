//4. Write a C++ program to implement a class called Bank Account that has private member variables for account number and balance. Include member functions to deposit and withdraw money from the account.

#include<iostream>
using namespace std;
class BankAccount{
    private:
    int accountnumber;
    double balance;
    public:
    BankAccount(int accnum,double bal){
        accountnumber=accnum;
        balance=bal;
    }
    void deposit(double amount){
        balance +=amount;
        cout<<"deposiited : "<<amount<<endl<<"new balance : "<<balance<<endl;

    }
    void withdraw(double amount){
        if(amount <=balance){
            balance -=amount;
            cout<<"withdrawn : "<<amount<<endl<<"new balance :"<<balance<<endl;
        }else{
            cout<<"insufficient funds !"<<endl;
        }
    }
    double getbalance(){
        return balance;
    }
};
int main(){
  BankAccount ba(12548752,500.0);
  ba.deposit(540);
  ba.withdraw(200);
}
