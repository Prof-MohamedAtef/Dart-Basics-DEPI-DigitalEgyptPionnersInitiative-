import 'package:fluterprojects/features/tasks/abstraction/refrigerator_type.dart';
import 'package:fluterprojects/features/tasks/abstraction/washing_machine_type.dart';

import 'appliance_type.dart';

void main(){
  Appliance myWashingMachine = WashingMachine();
  Appliance myRefrigerator = Refrigerator();

  myWashingMachine.turnOn();      // Output: Washing Machine is now ON
  (myWashingMachine as WashingMachine).startWashCycle(); // Output: Washing Machine is starting wash cycle
  myWashingMachine.turnOff();     // Output: Washing Machine is now OFF

  print('---');

  myRefrigerator.turnOn();        // Output: Refrigerator is now ON
  (myRefrigerator as Refrigerator).setTemperature(4); // Output: Refrigerator temperature set to 4°C
  myRefrigerator.turnOff();       // Output: Refrigerator is now OFF
}