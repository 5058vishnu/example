class Bank {
  int? accountnumber;
  String? accountholder;
  int? balance;

  Bank(this.accountnumber, this.accountholder, this.balance);

  credit(int amount) {
    balance = balance! + amount;
    checkminbalance();
  }
  // credit2(int? amount){
  //   int newbalance=0;
  //   newbalance=balance!+amount!;
  //   balance=newbalance;
  // }
  debit(int? amount) {
    if(amount!>balance!){
      print("Insufficent balance");
    }
    else{
      balance=balance! - amount;
      checkminbalance();
    }
  }

  display() {
    print("Account number : $accountnumber");
    print("Account Holder Name : $accountholder");
    print("Account Balance : $balance");
  }

  checkminbalance() {
    if (balance! < 2000) {
      print("maintain minimum balance of 2000");
    } else {
      //credit(2000);
      print("your balance amount is: $balance");
    }
  }
}


main(){
  var bank1=Bank(672565654,"Vishnu",1000);

 // bank1.checkminbalance();
  bank1.credit(5000);
 // bank1.checkminbalance();
  bank1.debit(5000);
  //bank1.checkminbalance();
}