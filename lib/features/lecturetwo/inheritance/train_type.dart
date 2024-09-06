import 'package:fluterprojects/features/lecturetwo/inheritance/vehicle_type.dart';

class Train extends Vehicle {
  String sound;

  Train({required this.sound, required String model, required String brand})
      : super(brand: brand, model: model);

  void start(){
    print("Train of Brand $brand and Model $model has started with a sound: $sound ");
  }
}
