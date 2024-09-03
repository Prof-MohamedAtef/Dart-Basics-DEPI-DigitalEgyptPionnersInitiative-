import 'bank_system.dart';

void main(){
  // Creating a bank account with an initial balance
  BankAccount myAccount = BankAccount(1000.0);

  // Accessing and modifying the balance using public methods
  myAccount.deposit(500.0);  // Deposited $500.00
  print('Current Balance: \$${myAccount.getBalance().toStringAsFixed(2)}');  // Current Balance: $1500.00

  myAccount.withdraw(300.0); // Withdrew $300.00
  print('Current Balance: \$${myAccount.getBalance().toStringAsFixed(2)}');  // Current Balance: $1200.00

  myAccount.withdraw(2000.0); // Invalid withdrawal amount.
}