import 'animal_type.dart';

class Dog extends Animal {
  String breed;

  Dog({required String name, required int age, required this.breed})
      : super(name: name, age: age);

  // Method specific to Dog class
  void bark() {
    print('$name is barking.');
  }

  // Overriding the sleep method
  @override
  void sleep() {
    print('$name the $breed is sleeping.');
  }
}