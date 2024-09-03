import 'package:fluterprojects/features/tasks/ploymorphism/shape_type.dart';

class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing a Rectangle');
  }
}

// Function to draw any shape
void drawShape(Shape shape) {
  shape.draw();
}