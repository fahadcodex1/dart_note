class Student {
  int id;
  String name;
  String course;
  List<int> mark;

  Student({
    required this.id,
    required this.name,
    required this.course,
    required this.mark,
  });

  void printStudentDetails() {
    print("Id:$id,Name:$name,Course:$course,Mark:$mark");
    averageMark();
  }

  // Calculate Average Mark
  void averageMark() {
    int total = 0;

    for (int i = 0; i < mark.length; i++) {
      total += mark[i];
    }

    double average = total / mark.length;

    print(average);
  }
}

void main() {
  Student student1 = Student(
    id: 101,
    name: "Arun",
    course: "Flutter",
    mark: [80, 75, 90],
  );
  Student student2 = Student(
    id: 102,
    name: "Rahul",
    course: "Python",
    mark: [65, 70, 80],
  );
  Student student3 = Student(
    id: 103,
    name: "Anu",
    course: "Flutter",
    mark: [92, 88, 95],
  );
  Student student4 = Student(
    id: 104,
    name: "Fazil",
    course: "Python",
    mark: [55, 62, 58],
  );
  Student student5 = Student(
    id: 105,
    name: "Neha",
    course: "Flutter",
    mark: [72, 80, 76],
  );

  student1.printStudentDetails();
  student2.printStudentDetails();
  student3.printStudentDetails();
  student4.printStudentDetails();
  student5.printStudentDetails();
}
