class BankAccount{
  int? accountNumber;
  String?accountHolder;
  double?balance;

  BankAccount( this.balance);

  deposit(int amount){
    balance=balance!+amount;
    print("$balance");
  }
  withdraw(int amount){
    balance=balance!-amount;
    print("$balance");
  }
}
main(){
  var b1=BankAccount(1000);
  b1.deposit(1000);
  b1.withdraw(500);
}