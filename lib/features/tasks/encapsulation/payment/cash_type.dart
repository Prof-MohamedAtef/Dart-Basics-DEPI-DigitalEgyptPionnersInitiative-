import 'package:fluterprojects/features/tasks/encapsulation/payment/payment.dart';

class Cash extends Payment {
  Cash(
      {required String accountNumber,
      required String name,
      required double balance})
      : super(accountNumber: accountNumber, balance: balance, name: name);
}
