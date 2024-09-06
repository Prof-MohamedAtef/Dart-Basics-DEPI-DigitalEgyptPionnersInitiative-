import 'package:fluterprojects/features/lecturetwo/abstraction/AbstractAnimal.dart';

class LionType extends Animal {
  LionType({required String name}) : super(animalName: name);

  @override
  void startRunning() {
    print("$animalName has started running");
  }

  @override
  void startEating(){
    print("$animalName has started Eating in Lion Type");
  }
}
