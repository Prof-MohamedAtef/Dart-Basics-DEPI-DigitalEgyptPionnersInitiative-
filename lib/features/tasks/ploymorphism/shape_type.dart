abstract class Shape {
  void draw(); // Abstract method
}

// Derived class 1
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a Circle');
  }
}