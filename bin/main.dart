import 'Car.dart';

void main(List<String> arguments) {
  Car car1 = Car("Blue", "BMZ", 1999);
  car1.yearChange = 2021;
  print("Last test: $car1.giveYear".toString());
  // print("Car 1 features: ${car1.name}, ${car1.color}, ${car1.year}");
  // Car car2 = Car("Ford", "YELLOW", 1988);
  // print("Car 2 features: ${car2.name}, ${car2.color}, ${car2.year}");
  // Car car3 = Car.namedConst("RED", 2015);
  // print("Car 3 features: ${car3.year}, ${car3.color}");

  // students
  Student student1 = Student("David", 564828);
  print(student1.name);
  Student student2 = Student.id(876859);

  Student student3 = Student.usingFactory(3, "John");
  Student student4 = Student.usingFactory(5, "Wendy");

  print("Student 3: ${student3.id} $student3.name".toString());
  print(student4.name);
  print(student4.id);

  // getters and setters
}

// Creat a car class blueprint.
// This class can be placed inside of its own file or typed in sepearte {}
// below the main program.

class Student {
  String name = "";
  int id = 0;
  Student(this.name, this.id) {
    print("Creating student constructor");
  }
  Student.id(this.id) {
    print("Creating id constructor");
  }

  // The factory constructore is used to decide which constructor is needed.

  factory Student.usingFactory(int id, String name) {
    if (id < 0) {
      return Student(name, 1);
    } else {
      return Student(name, id);
    }
  }
}
