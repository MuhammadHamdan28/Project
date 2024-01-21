class Student {
  String name;
  String enrollmentId;
  String course;

  Student(this.name, this.enrollmentId, this.course);

  String toString() {
    return 'Name: $name, Enrollment ID: $enrollmentId, Course: $course';
  }
}

class EnrollmentSystem {
  List<Student> students = [];

  void enrollStudent(String name, String enrollmentId, String course) {
    students.add(Student(name, enrollmentId, course));
  }

  void displayEnrollment() {
    if (students.isEmpty) {
      print("No students enrolled in the system.");
    } else {
      print("Enrollment Records:");
      students.forEach((student) => print(student));
    }
  }
}

void main() {
  EnrollmentSystem enrollmentSystem = EnrollmentSystem();

  // Enroll students
  enrollmentSystem.enrollStudent(
      "Hamdan Abid", "2022001552", "Computer Science");
  enrollmentSystem.enrollStudent("Ahmed Nawaz", "2022002559", "Mathematics");
  enrollmentSystem.enrollStudent("Saad Ayaz", "2022003887", "Physics");

  // Display
  enrollmentSystem.displayEnrollment();
}
