import 'package:fluterprojects/features/tasks/encapsulation/bank_system.dart';

class Payment extends BankAccount {
  String accountNumber;

  Payment(
      {required this.accountNumber,
      required double balance,
      required String name})
      : super(balance, name);
}
