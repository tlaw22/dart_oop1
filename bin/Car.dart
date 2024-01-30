class Car {
  String name = "";
  String color = "";
  int _year = 0;
  Car(String this.name, String this.color, int _year) {
    print("Creating constructor");
  }
  void set yearChange(int year) {
    _year = year;
  }

  int get giveYear => _year;

  void carRun() {
    print(name);
  }

  Car.namedConst(String this.color, int _year) {
    print("Creating named constructor");
    this.color = color;
    _year = _year;
  }
}