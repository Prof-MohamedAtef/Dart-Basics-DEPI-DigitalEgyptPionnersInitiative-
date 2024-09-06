abstract class Animal{
  String animalName;
  Animal({required this.animalName});
  void startRunning();
  void startEating(){
    print("$animalName is eating");
  }
}