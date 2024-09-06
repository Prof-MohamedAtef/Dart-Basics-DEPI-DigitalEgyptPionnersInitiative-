import 'dart:io';

import 'package:fluterprojects/features/tasks/encapsulation/payment/cash_type.dart';
import 'package:fluterprojects/features/tasks/encapsulation/payment/credit_card.dart';

import 'bank_system.dart';

BankAccount? myAccount;
String? balance;

void main() {
  // Creating a bank account with an initial balance

  print("Starting on Thhursday, 5 September, 2024");
  print("Select Payment Method");
  print("Select 1 for Credit Card\nSelect 2 for Cash");
  String? userSelection = stdin.readLineSync();
  switch (userSelection) {
    case "1":
      creditCardProcess();
    case "2":
      manualCashProcess();
    default:
      print("You entered wrong value");
  }
  depositWithdrawalOperations();
}

void manualCashProcess() {
  initialBalance();
  myAccount = Cash(
      accountNumber: "accountNumber: 560665420",
      name: "Mohamed 3atef",
      balance: double.parse(balance.toString()));
  String? userName = myAccount?.name;
  print("Welcome Mr. $userName");
}

void depositWithdrawalOperations() {
  print("Enter Your preferred operation");
  print("Select 1 for deposit\nSelect 2 for withdrawal");
  String? userSelection = stdin.readLineSync();
  switch (userSelection) {
    case "1":
      depositProcess();
    case "2":
      withdrawalProcess();
    default:
      print("You entered wrong value");
  }
}

void initialBalance() {
  print("Enter Initial Balance for your account");
  balance = stdin.readLineSync();
}

void creditCardProcess() {
  initialBalance();
  myAccount = CreditCard(
      accountNumber: "accountNumber: 560665420",
      creditCardNumber: "CreditCard Number: 6598741236523698",
      month: "05",
      year: "27",
      cvv: "252",
      name: "Mohamed 3atef",
      balance: double.parse(balance.toString()));
}

void withdrawalProcess() {
  print("Enter Withdrawal value");
  String? withdrawal = stdin.readLineSync();

  myAccount?.withdraw(double.parse(withdrawal.toString())); // Withdrew $300.00
  print(
      'Current Balance: \$${myAccount?.getBalance().toStringAsFixed(2)}'); // Current Balance: $1200.00
}

void depositProcess() {
  print("Enter deposit value");
  String? deposit = stdin.readLineSync();

  // Accessing and modifying the balance using public methods
  myAccount?.deposit(double.parse(deposit.toString())); // Deposited $500.00

  print(
      'Current Balance: \$${myAccount?.getBalance().toStringAsFixed(2)}'); // Current Balance: $1500.00
}
