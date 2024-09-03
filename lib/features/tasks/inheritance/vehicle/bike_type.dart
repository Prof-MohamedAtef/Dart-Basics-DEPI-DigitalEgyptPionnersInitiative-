import 'package:fluterprojects/features/tasks/inheritance/vehicle/vehicle_type.dart';

class Bike extends Vehicle {
  bool hasCarrier;

  Bike({required String brand, required int year, required this.hasCarrier})
      : super(brand: brand, year: year);

  void ringBell() {
    print('$brand bike is ringing the bell.');
  }

  // Overriding the start method
  @override
  void start() {
    print('$brand bike is starting quietly.');
  }
}