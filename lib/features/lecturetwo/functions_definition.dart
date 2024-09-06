import 'dart:ffi';

/*
named parameters
 */
double calculateArea({ required double width, required double height}){
  return width * height;
}

double countDiscount({required double price, required double discount}){
  return price * discount;
}


/*
positional parameter
default parameter
 */

double sumSquares({required double length, double width = 12.0}){
  return length + width;
}

/*
return multiple values
 */

