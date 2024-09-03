class BankAccount {
  // Private variable to store the balance
  double _balance;

  // Constructor to initialize the balance
  BankAccount(this._balance);

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid withdrawal amount.');
    }
  }

  // Public method to check the balance
  double getBalance() {
    return _balance;
  }
}