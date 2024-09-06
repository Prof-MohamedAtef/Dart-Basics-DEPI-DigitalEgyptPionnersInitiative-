import 'package:fluterprojects/features/tasks/encapsulation/payment/payment.dart';

class CreditCard extends Payment {
  CreditCard(
      {required String accountNumber,
      required String creditCardNumber,
      required String month,
      required String year,
      required String cvv,
      required String name,
      required double balance})
      : super(accountNumber: accountNumber, balance: balance, name: name);


}
