import 'package:fluterprojects/features/lecturetwo/inheritance/train_type.dart';

void main(){
  Train train = Train(sound: "TooT", model: "G-2310", brand: "GermanTrain");
  train.engineStart();
  train.start();
  train.engineStops();
}