import 'package:fluterprojects/features/tasks/ploymorphism/rectangle_type.dart';
import 'package:fluterprojects/features/tasks/ploymorphism/shape_type.dart';

void main(){
  Shape circle = Circle(); // Circle is a Shape
  Shape rectangle = Rectangle(); // Rectangle is a Shape

  drawShape(circle);   // Output: Drawing a Circle
  drawShape(rectangle); // Output: Drawing a Rectangle
}