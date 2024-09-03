import 'dog_type.dart';

void main(){
  // Creating an instance of the Dog class
  Dog myDog = Dog(name: 'Buddy', age: 3, breed: 'Golden Retriever');

  // Accessing methods from the base class
  myDog.eat();    // Output: Buddy is eating.
  myDog.sleep();  // Output: Buddy the Golden Retriever is sleeping.

  // Accessing method from the derived class
  myDog.bark();   // Output: Buddy is barking.
}