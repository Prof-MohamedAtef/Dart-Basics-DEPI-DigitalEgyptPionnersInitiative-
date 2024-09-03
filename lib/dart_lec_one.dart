import 'dart:ffi';
import 'dart:io';

void main(){
  print("Welcome in Emad Eldin Cinema");
  print("Select your preferred Movie");
  String? movie = stdin.readLineSync();
  print("Enter your preferred Chair");
  String? chair =  stdin.readLineSync();
  int chairNum = int.parse(chair!);
  print("Emad Eldin Cinema Receipt");
  print("You have booked the movie successfully");
  print("Your Movie Name: $movie");
  print("Your booked chair: $chairNum");


  /*
  if if else
   */

  // int x = 8;
  // int y = 12;
  //
  // if(x == y || y >= x){
  //   print("Success");
  // }else{
  //   print("Fail");
  // }
  //
  // String message = x > y ? "Success" : "Faile";
  // print(message);



  // Set<String> namesSet = {
  //   "Moaz", "Ahmed", " Mohamed", "Moaz"
  // };
  // List<String> groupNames = ["Moaaz", " Ahmed Asaad", "Moaaz"];
  //
  // print(groupNames);
  //
  // print(namesSet);
  //
  // print(namesSet.runtimeType);
  //
  // Set<int> numsSet = {1, 2, 5, 8, 99};
  // print(numsSet);
  // Set<dynamic> data = {1, "Name", false, 2.5};
  // print(data);
  // print(data.runtimeType);
  // print(data.toList());



  // List<String> groupNames = ["Moaaz", " Ahmed Asaad"];
  //
  // print(groupNames);
  // groupNames.add("Ahmed Yehya");
  // print(groupNames);
  // groupNames.addAll(["Yasmine", "Hanaa"]);
  // print(groupNames);
  // groupNames.insert(2, "Zeyad");
  // print(groupNames);
  // groupNames.insertAll(3, ["mohamed","mostafa","sally"]);
  // print(groupNames);
  // print(groupNames.indexed);
  // print(groupNames.reversed);
  // groupNames.remove("sally");
  // print(groupNames);
  //
  // groupNames.removeAt(6);
  // print(groupNames);
  // groupNames.removeRange(0, 5);
  // print(groupNames);
  //
  // print(groupNames.where((element) => element == "Moaaz"));

  // groupNames.removeAt(1);

  // Map<String, String> myData = {
  //   "Name": "Mohamed Atef",
  //   "Job": "Senior Android Developer",
  //   "Age": "30",
  //   "Length": "174",
  //   "Address": "North Sinai, El Arish"
  // };
  //
  // print(myData["Age"]);
  //
  // Map<int, String> indexedData = {
  //   1: "Mohamed Atef",
  //   2: "Senior Anroid Developer",
  //   3: "30"
  // };
  //
  // print(indexedData[2]);





  // List<int> groupAges = [24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24];
  // List<dynamic> groups = ["Moaaz", 25, false, 2.5, ];
  //
  // print(groupNames);
  // print(groupNames.runtimeType);
  // print(groupNames.length);
  // print(groupNames[2]);
  //
  // print(groupAges);
  // print(groups);



  // var z = 5;
  // var c = "mohamed";
  // var v = false;
  // var b = 2.6;
  // var j = "t";
  //
  // print(z);
  //
  // z = 3;
  // print(z);
  //
  // print(c);
  // c = "john";
  // print(c);
  //
  // // c = 8;
  //
  // // c = 5;
  //
  //
  //
  // dynamic e = 12;
  // dynamic h = 12.5;
  // dynamic u = true;
  // dynamic p = "ahmed";
  //
  // print(e);
  // e = "mohamed";
  // print(e);
  // e = false;
  // print(e);
  //
  //
  // /*
  // compile time
  //  */
  // const int Minutes = 60;
  // const int Seconds = 60;
  // const int Hours = 24;
  //
  // /*
  // final --- > run time
  //  */
  //
  // final int Mins = 60;
  //

  // print("Hello World");

  // int x = 8 ;
  // int y = 9;
  // int result = x + y;
  // print(result);

  // double n = 2.5;
  // double m = 1.5;
  // double o = m * n;

  // double y = 6.25;
  // double u = 1.2;
  // double division = y / u;
  // print(division);
  //
  // int x = 8;
  // double i = 2.2;
  // //
  // double t = x * i;
  // // print(t);


  // print("Multiplication of $x and $i equal: $t");

  // print("Multiplication of x and i = ${x*i}");


  // bool q = false;
  // bool e = true;
  //
  // String name = "mohamed";
  //
  // String letter = "l";
  //
  // print(name+ " " + letter);
  //
  // print("$name $letter");
}

