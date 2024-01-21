class Student {
  String name;
  int rollNumber;
  double feesPaid;

  Student(this.name, this.rollNumber, this.feesPaid);
}

class FeesRecordSystem {
  List<Student> students = [];

  void recordFeesPayment(String name, int rollNumber, double feesPaid) {
    students.add(Student(name, rollNumber, feesPaid));
  }

  void displayFeesRecords() {
    if (students.isEmpty) {
      print("No fees records available.");
    } else {
      print("Fees Records:");
      students.forEach((student) {
        print(
            'Name: ${student.name}, Roll Number: ${student.rollNumber}, Fees Paid: ${student.feesPaid}');
        double remainingFees = 1000.0 - student.feesPaid;
        print("Remaining Fees: $remainingFees");
        print("-------------");
      });
    }
    print("");
  }

  double calculateTotalFeesCollected() {
    double totalFeesCollected = 0;
    students.forEach((student) => totalFeesCollected += student.feesPaid);
    return totalFeesCollected;
  }
}

void main() {
  FeesRecordSystem feesRecordSystem = FeesRecordSystem();

  // Record fees payments for some sample students
  feesRecordSystem.recordFeesPayment("Hamdan", 101, 250.0);
  feesRecordSystem.recordFeesPayment("Ali", 102, 1000.0);
  feesRecordSystem.recordFeesPayment("Saad", 103, 200.0);

  // Display fees records
  feesRecordSystem.displayFeesRecords();

  // Calculate and display total fees collected
  double totalFeesCollected = feesRecordSystem.calculateTotalFeesCollected();
  print("Total Fees Collected: $totalFeesCollected");
}
