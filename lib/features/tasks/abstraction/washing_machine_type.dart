// Concrete class 1
import 'appliance_type.dart';

class WashingMachine extends Appliance {
  @override
  void turnOn() {
    print('Washing Machine is now ON');
  }

  @override
  void turnOff() {
    print('Washing Machine is now OFF');
  }

  void startWashCycle() {
    print('Washing Machine is starting wash cycle');
  }
}