class Animal {
  String name;
  int age;

  Animal({required this.name, required this.age});

  void eat() {
    print('$name is eating.');
  }

  void sleep() {
    print('$name is sleeping.');
  }
}