class Bank {
  int? accountNumber;
  String? accountHolder;
  int? balance;

  Bank({this.accountNumber, this.accountHolder, this.balance});

  void credit(int amount) {
    balance = (balance ?? 0) + amount;
    checkMinBalance();
  }

  void debit(int amount) {
    if (balance != null) {
      if (amount > balance!) {
        print("Insufficient balance");
      } else {
        balance = balance! - amount;
        checkMinBalance();
      }
    }
  }

  void display() {
    print("Account number : $accountNumber");
    print("Account Holder Name : $accountHolder");
    print("Account Balance : $balance");
  }

  void checkMinBalance() {
    if (balance != null && balance! < 2000) {
      int additionalAmount = 2000 - balance!;
      credit(additionalAmount);
      print("Maintain a minimum balance of 2000. Additional amount credited: $additionalAmount");
    }
  }
}

void main() {
  var bank1 = Bank(accountNumber: 123, accountHolder: "Raju", balance: 1500);

  print("Initial Account Details:");
  bank1.display();

  print("Checking minimum balance:");
  bank1.checkMinBalance();

  print("Crediting 5000:");
  bank1.credit(5000);
  bank1.display();

  print("Debiting 3000:");
  bank1.debit(3000);
  bank1.display();

  print("Checking minimum balance after transactions:");
  bank1.checkMinBalance();
}
