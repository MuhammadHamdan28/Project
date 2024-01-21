class Student {
  String name;
  int totalClasses;
  int attendedClasses;

  Student(this.name, this.totalClasses, this.attendedClasses);

  double calculateAttendancePercentage() {
    return (attendedClasses / totalClasses) * 100;
  }

  @override
  String toString() {
    return 'Name: $name, Attended Classes: $attendedClasses, Total Classes: $totalClasses, Attendance Percentage: ${calculateAttendancePercentage().toStringAsFixed(2)}%';
  }
}

class AttendanceSystem {
  List<Student> students = [];

  void markAttendance(String name, int totalClasses, int attendedClasses) {
    students.add(Student(name, totalClasses, attendedClasses));
  }

  void displayAttendance() {
    if (students.isEmpty) {
      print("No students in the system.");
    } else {
      print("Attendance Records:");
      students.forEach((student) => print(student));
    }
  }
}

void main() {
  AttendanceSystem attendanceSystem = AttendanceSystem();

  // Mark attendance
  attendanceSystem.markAttendance("Hamdan", 20, 17);
  attendanceSystem.markAttendance("Ahmed", 20, 8);
  attendanceSystem.markAttendance("ali", 20, 20);

  // Display attendance
  attendanceSystem.displayAttendance();
}
