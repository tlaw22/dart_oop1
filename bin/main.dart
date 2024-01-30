void main(List<String> arguments) {
  Car car1 = Car("Blue", "BMZ", 1999);

  print("Car 1 features: ${car1.name}, ${car1.color}, ${car1.year}");
  Car car2 = Car("Ford", "YELLOW", 1988);
  print("Car 2 features: ${car2.name}, ${car2.color}, ${car2.year}");
  Car car3 = Car.namedConst("RED", 2015);
  print("Car 3 features: ${car3.year}, ${car3.color}");
}

// Creat a car class blueprint.
// This class can be placed inside of its own file or typed in sepearte {} 
// below the main program.

class Car {
  String name = "";
  String color = "";
  int year = 0;
  Car(String this.name, String this.color, int this.year) {
    print("Creating constructor");
  }
  void carRun() {
    print(name);
  }

  Car.namedConst(String this.color, int this.year) {
    print("Creating named constructor");
    this.color = color;
    this.year = year;
  }
}
