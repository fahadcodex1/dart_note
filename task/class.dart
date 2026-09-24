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
  }
}

void main() {
  Student student1 = Student(
    id: 101,
    name: "Ajith",
    course: "Flutter",
    mark: [20, 50, 40],
  );
  student1.printStudentDetails();
}
