class Vehicle{
  String model = "C 300", brand = "Mercedes";

  Vehicle({required this.brand, required this.model});

  void engineStart(){
    print("Engine of $brand, $model has started");
  }

  void engineStops(){
    print("Engine of $brand, $model has stopped");
  }
}