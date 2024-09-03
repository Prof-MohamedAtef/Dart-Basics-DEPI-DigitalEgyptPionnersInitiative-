/*
apply named parameter
 */

double calculateArea({required double length, required double width}) {
  return length * width;
}

double calculateDiscount({required double price, double discount = 0.10}) {
  return price * (1 - discount);
}

void greet({required String firstName, String lastName = ''}) {
  print('Hello, $firstName $lastName!');
}

/*
default and named parameters
 */

void showProfile({String name = 'Guest', required int age, String country = 'Unknown'}) {
  print('Name: $name, Age: $age, Country: $country');
}

/*
apply positional parameter
 */

void printCoordinates(double x, double y) {
  print('Coordinates are: ($x, $y)');
}

String concatenate(String first, String second) {
  return first + second;
}

double calculateSum(double a, double b, double c) {
  return a + b + c;
}

/*
default value
 */

void displayMessage(String message, [String prefix = 'Notice:']) {
  print('$prefix $message');
}