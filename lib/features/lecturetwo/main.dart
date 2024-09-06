import 'dart:ffi';

import 'package:fluterprojects/features/lecturetwo/functions_definition.dart';
import 'package:fluterprojects/features/tasks/functions_impl.dart';

import '../tasks/return_multiple_values.dart';

void main(){
  /*
  named parameter
   */
  // print(calculateArea(width: 5, height: 10));
  calculateDiscount(price: 8);
  countDiscount(price: 500, discount: 5);

  sumSquares(length: 8);

  List<double> nums = [10.0, 20.0, 30.0, 40.0];

  Map<String, double> statistics = calculateStatistics(nums);
  print('Sum: ${statistics['sum']}, Average: ${statistics['average']}, Max: ${statistics['max']}');

  List<double> numsMoreTen = nums.where((test) => test > 20).toList();
  print(numsMoreTen);



}