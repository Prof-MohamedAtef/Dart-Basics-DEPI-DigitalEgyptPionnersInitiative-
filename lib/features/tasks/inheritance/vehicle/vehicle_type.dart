class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});

  void start() {
    print('$brand vehicle is starting.');
  }

  void stop() {
    print('$brand vehicle is stopping.');
  }
}