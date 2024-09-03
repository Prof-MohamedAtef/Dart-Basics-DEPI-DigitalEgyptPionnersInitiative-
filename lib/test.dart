import 'dart:ffi';

void main(){
  // print("hello world");
  // int x = 5;
  // int y = 2;
  // double z = 2.3;
  // int result = x + y;
  // print(result);
  // double n = 2.1;
  // double m = 3.5;
  // double r = m + n;
  // print(r);
  // double multiplyInt = x * n;
  // print(multiplyInt);
  // print("this value is equal: $r");
  //
  // print("multiplication = ${y*m}");
  //
  // bool h = true;
  // bool o = false;
  //
  // String k = "hello";
  // String u = "r";
  //
  // String uu = 'hello, i am 30 years';
  // print(uu + " " + u);
  //
  // print("$uu $m");

  var k = 9;
  var p = 9.7;
  var w = "mohamed";
  var c = "c";
  var q = true;

  dynamic a = 9;
  dynamic b = 9.2;
  dynamic d = "ahmed";
  dynamic l = "l";
  dynamic y = false;

  w = "ahmed";
  print(w);

  d = "mohamed";
  print(d);

  // dynamic accept different data types ..
  b = 6.2;
  b = "kamel";
  print(b);

  const double PI = 3.14; //--> compile time
  final double pi = 3.14; //--> runtime

  List<String> names = ["mohamed", "ahmed", 'noha'];
  List<int> numbers = [1, 2, 8, 9];
  List<dynamic> types = [1, 2, 'ahmed', true, 2.5];
  print(names);
  print(names.runtimeType);
  print(names.length);
  print(names[2]);
  print(numbers);
  print(types);

  Map<String, String> mapNames = {
    "name1": "Ali",
    "name2": "Mohamed",
    "name3": "Mostafa"
  };

  Map<int, String> mapNamesData = {
    1 : "Ali",
    2 : "Mohamed",
    3 : "Mostafa"
  };
  print(mapNamesData[3]);

  print(mapNames["name2"]);

  Set<String> mySet = {
    "ahmed", "mohamed", " mostafa", "ahmed"
  };
  List<String> myList = [
    "ahmed", "mohamed", " mostafa", "ahmed"
  ];

  print(mySet.runtimeType);

  print(mySet.length);  // convert to list

  print(mySet);  // set does not duplicate --> feature
  print(myList);
  print(mySet.toList());

  print(mapNamesData[1]);

  print(myList.indexed);
  myList.add("jake");
  print(myList);
  myList.addAll(["ramez", "islam"]);
  myList.insert(1, "kamel");
  myList.insert(3, "kareem");
  myList.insertAll(4, ["kimoo", "simo", "nemo"]);
  print(myList);
  print(myList.reversed);
  myList.remove("kimoo");
  print(myList);
  myList.removeAt(1);
  print(myList);
  myList.removeLast();
  print(myList);
  myList.removeRange(1, 5);
  print(myList);
  print(myList.where((element)=> element == "jake"));
  print(myList.firstWhere((element) => element == "ramez"));

}