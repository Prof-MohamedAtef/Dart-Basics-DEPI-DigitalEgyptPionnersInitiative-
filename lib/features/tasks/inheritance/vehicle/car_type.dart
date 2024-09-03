import 'package:fluterprojects/features/tasks/inheritance/vehicle/vehicle_type.dart';

class Car extends Vehicle {
  int numberOfDoors;

  Car({required String brand, required int year, required this.numberOfDoors})
      : super(brand: brand, year: year);

  void honk() {
    print('$brand car is honking.');
  }

  // Overriding the start method
  @override
  void start() {
    print('$brand car is starting with a roar.');
  }
}