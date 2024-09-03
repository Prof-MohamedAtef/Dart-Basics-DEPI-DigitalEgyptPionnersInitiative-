import 'package:fluterprojects/features/tasks/recursive_function.dart';
import 'package:fluterprojects/features/tasks/return_multiple_values.dart';

import 'functions_impl.dart';

void main(){

  /*
  named parameter
   */
  double finalPrice = calculateDiscount(price: 100.0, discount: 0.20);
  print('The final price after discount is $finalPrice');

  double area = calculateArea(length: 5.0, width: 3.0);
  print('The area is $area');

  /*
  default and named parameters
   */
  showProfile(name: 'Lily', age: 25, country: 'Canada');
  showProfile(age: 30); // name and country use default values


  /*
  positional
   */

  printCoordinates(10.0, 20.0);

  String result = concatenate('Hello, ', 'World!');
  print(result);

  double sum = calculateSum(1.0, 2.0, 3.0);
  print('The sum is $sum');

  /*
  default values
   */
  displayMessage('This is a default message');
  displayMessage('This is an important message', 'Warning:');

  /*
  return multiple values
   */

  List<double> numbers = [10.0, 20.0, 30.0, 40.0];
  Map<String, double> stats = calculateStatistics(numbers);
  print('Sum: ${stats['sum']}, Average: ${stats['average']}, Max: ${stats['max']}');

  /*
  lambda function
   */

  List<int> numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = numbersList.where((number) => number % 2 == 0).toList();
  print('Even numbers: $evenNumbers');

  /*
  use recursive function
   */
  int number = 8;
  int factResult = factorial(number);
  print('The factorial of $number is $factResult');

}