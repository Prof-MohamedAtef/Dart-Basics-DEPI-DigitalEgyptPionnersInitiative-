import 'dart:ffi';
import 'dart:io';

void main(){
  // print("Enter your name");
  // String? name = stdin.readLineSync();
  // print("Enter your age");
  // String? age = stdin.readLineSync();
  // print("Your name:\n$name\nYour age:\n$age");

  /*
  if else if else
  while
  do while
  for loop
   */

  /*
  ternary operator
   */

  // var time = 11.5;
  // String result = time < 11 ? "Good Morning" : "Good Afternoon";
  // print(result);
  //
  // switch(time){
  //   case 10: {print("Good Morning");}
  //   case 11.5: {print("Good After noon");}
  //   case 12: {print("Good After noon");}
  // }

  /*
  logical operators
  && || !
   */

  /*
  relational operators > < >= <= ==
   */

  /*
  for loop
   */

  // List names = ["ahmed", "mohamed"];
  // List salaries = [8000, 9000];
  // for(int i = 0; i < names.length; i ++){
  //   // for(int j = 0; j < salaries.length; j++){
  //     print("Salary of ${names[i]} = ${salaries[i]}");
  //   // }
  // }

  /*
  even
   */

  print("Enter num");
  String? num = stdin.readLineSync();
  int number = int.parse(num.toString());
  if(number % 2 == 0){
    print("Even");
  }else{
    print("Odd");
  }
}