// Concrete class 2
import 'appliance_type.dart';

class Refrigerator extends Appliance {
  @override
  void turnOn() {
    print('Refrigerator is now ON');
  }

  @override
  void turnOff() {
    print('Refrigerator is now OFF');
  }

  void setTemperature(int temperature) {
    print('Refrigerator temperature set to $temperature°C');
  }
}