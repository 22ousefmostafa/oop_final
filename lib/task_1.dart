class BankAccount {
  static int _idCounter = 1000;
  final int accountID;
  double balance;

  BankAccount(double initialBalance)
      : accountID = ++_idCounter,
        balance = initialBalance > 0 ? initialBalance : 0.0;

  BankAccount.noArgument()
      : accountID = ++_idCounter,
        balance = 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('تم إيداع \$${amount.toStringAsFixed(2)}. الرصيد الحالي: \$${balance.toStringAsFixed(2)}');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('تم سحب \$${amount.toStringAsFixed(2)}. الرصيد المتبقي: \$${balance.toStringAsFixed(2)}');
    } else {
      print('عملية غير مقبولة: الرصيد غير كافٍ');
    }
  }
}

void main() {
  BankAccount account1 = BankAccount(500.0);
  account1.deposit(200.0);
  account1.withdraw(150.0);
  account1.withdraw(1000.0);

  BankAccount account2 = BankAccount.noArgument();
  account2.deposit(350.0);
  account2.withdraw(100.0);
}