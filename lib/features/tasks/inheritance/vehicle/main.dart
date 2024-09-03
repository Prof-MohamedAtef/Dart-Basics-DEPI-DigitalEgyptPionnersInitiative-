import 'bike_type.dart';
import 'car_type.dart';

void main(){
  // Creating an instance of the Car class
  Car myCar = Car(brand: 'Toyota', year: 2022, numberOfDoors: 4);
  myCar.start(); // Calls the overridden start method in Car
  myCar.honk();
  myCar.stop(); // Calls the stop method from the Vehicle class

  print('---');

  // Creating an instance of the Bike class
  Bike myBike = Bike(brand: 'Trek', year: 2021, hasCarrier: true);
  myBike.start(); // Calls the overridden start method in Bike
  myBike.ringBell();
  myBike.stop(); // Calls the stop method from the Vehicle class
}