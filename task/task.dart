// Task 1
// void main() {
//   List<Map<String, dynamic>> students = [
//     {
//       "Id": 101,
//       "Name": "Arun",
//       "Course": "Flutter",
//       "Marks": [80, 75, 90],
//     },
//     {
//       "Id": 102,
//       "Name": "Rahul",
//       "Course": "Python",
//       "Marks": [65, 70, 60],
//     },
//     {
//       "Id": 103,
//       "Name": "Anu",
//       "Course": "Flutter",
//       "Marks": [92, 88, 95],
//     },
//     {
//       "Id": 104,
//       "Name": "Fazil",
//       "Course": "Python",
//       "Marks": [55, 62, 58],
//     },
//     {
//       "Id": 105,
//       "Name": "Neha",
//       "Course": "Flutter",
//       "Marks": [72, 80, 76],
//     },
//   ];
// for (var i in students) {
//   int id = i["Id"];
//   String name = i["Name"];
//   String course = i["Course"];
//   List<int> marks = i["Marks"];
//   int total = 0;

//   for (var mark in marks) {
//     total += mark;
//   }

//   double average = total / marks.length;
//   print("Id:$id, Name:$name, Course:$course, Marks:$marks,Average:$average}");
// }
// }

// Task 2

// import 'dart:io';

// List<Map<String, dynamic>> students = [
//   {
//     "id": 101,
//     "name": "Arun",
//     "course": "Flutter",
//     "marks": [80, 75, 90],
//   },
//   {
//     "id": 102,
//     "name": "Rahul",
//     "course": "Python",
//     "marks": [65, 70, 60],
//   },
//   {
//     "id": 103,
//     "name": "Anu",
//     "course": "Flutter",
//     "marks": [92, 88, 95],
//   },
//   {
//     "id": 104,
//     "name": "Fazil",
//     "course": "Python",
//     "marks": [55, 62, 58],
//   },
//   {
//     "id": 105,
//     "name": "Neha",
//     "course": "Flutter",
//     "marks": [72, 80, 76],
//   },
// ];

// void main() {
//   print("Enter Student ID:");
//   int studentId = int.parse(stdin.readLineSync()!);

//   searchStudent(studentId);
// }

// void searchStudent(int studentId) {
//   bool found = false;

//   for (int i = 0; i < students.length; i++) {
//     if (students[i]["id"] == studentId) {
//       found = true;

//       String name = students[i]["name"];
//       String course = students[i]["course"];
//       List<int> marks = students[i]["marks"];

//       int total = 0;

//       for (int j = 0; j < marks.length; j++) {
//         total = total + marks[j];
//       }

//       double average = total / marks.length;

//       print("Name: $name");
//       print("Course: $course");
//       print("Marks: $marks");
//       print("Average mark: $average");

//       break;
//     }
//   }

//   if (found == false) {
//     print("Student not found");
//   }
// }

// Task 3

// List<Map<String, dynamic>> students = [
//   {
//     "id": 101,
//     "name": "Arun",
//     "course": "Flutter",
//     "marks": [80, 75, 90],
//   },
//   {
//     "id": 102,
//     "name": "Rahul",
//     "course": "Python",
//     "marks": [65, 70, 60],
//   },
//   {
//     "id": 103,
//     "name": "Anu",
//     "course": "Flutter",
//     "marks": [92, 88, 95],
//   },
//   {
//     "id": 104,
//     "name": "Fazil",
//     "course": "Python",
//     "marks": [55, 62, 58],
//   },
//   {
//     "id": 105,
//     "name": "Neha",
//     "course": "Flutter",
//     "marks": [72, 80, 76],
//   },
// ];

// void main() {
//   findTopper();
// }

// double calculateAverage(List<int> marks) {
//   int total = 0;

//   for (int i = 0; i < marks.length; i++) {
//     total = total + marks[i];
//   }

//   return total / marks.length;
// }

// void findTopper() {
//   String topperName = "";
//   String topperCourse = "";
//   double highestAverage = 0;

//   for (int i = 0; i < students.length; i++) {
//     String name = students[i]["name"];
//     String course = students[i]["course"];
//     List<int> marks = students[i]["marks"];

//     double average = calculateAverage(marks);

//     if (average > highestAverage) {
//       highestAverage = average;
//       topperName = name;
//       topperCourse = course;
//     }
//   }

//   print("Student Name: $topperName");
//   print("Course: $topperCourse");
//   print("Average Mark: $highestAverage");
// }

// Task 4

// import 'dart:io';

// List<Map<String, dynamic>> students = [
//   {
//     "id": 101,
//     "name": "Arun",
//     "course": "Flutter",
//     "marks": [80, 75, 90],
//   },
//   {
//     "id": 102,
//     "name": "Rahul",
//     "course": "Python",
//     "marks": [65, 70, 60],
//   },
//   {
//     "id": 103,
//     "name": "Anu",
//     "course": "Flutter",
//     "marks": [92, 88, 95],
//   },
//   {
//     "id": 104,
//     "name": "Fazil",
//     "course": "Python",
//     "marks": [55, 62, 58],
//   },
//   {
//     "id": 105,
//     "name": "Neha",
//     "course": "Flutter",
//     "marks": [72, 80, 76],
//   },
// ];

// void main() {
//   print("Enter course name:");
//   String courseName = stdin.readLineSync()!;

//   filterByCourse(courseName);
// }

// void filterByCourse(String courseName) {
//   bool found = false;

//   for (int i = 0; i < students.length; i++) {
//     if (students[i]["course"].toString().toLowerCase() ==
//         courseName.toLowerCase()) {
//       if (found == false) {
//         print("\n$courseName Students:");
//       }

//       print(students[i]["name"]);
//       found = true;
//     }
//   }

//   if (found == false) {
//     print("No students found for this course");
//   }
// }

// Task 5

// void main() {
//   List<Map<String, dynamic>> students = [
//     {
//       "id": 101,
//       "name": "Arun",
//       "course": "Flutter",
//       "marks": [80, 75, 90],
//     },
//     {
//       "id": 102,
//       "name": "Rahul",
//       "course": "Python",
//       "marks": [65, 70, 60],
//     },
//     {
//       "id": 103,
//       "name": "Anu",
//       "course": "Flutter",
//       "marks": [92, 88, 95],
//     },
//     {
//       "id": 104,
//       "name": "Fazil",
//       "course": "Python",
//       "marks": [55, 62, 58],
//     },
//     {
//       "id": 105,
//       "name": "Neha",
//       "course": "Flutter",
//       "marks": [72, 80, 76],
//     },
//   ];

//   for (var student in students) {
//     List<int> marks = student["marks"];

//     int total = 0;
//     for (int mark in marks) {
//       total += mark;
//     }

//     double average = total / marks.length;

//     if (average >= 50) {
//       print("${student["name"]} → PASS");
//     } else {
//       print("${student["name"]} → FAIL");
//     }
//   }
// }
