class Student {
  String name;
  double score;

  Student(this.name, this.score);

  void showInfo() {
    print("Name: $name");
    print("Score: $score");
  }

  String calculateGrade() {
    if (score >= 80) {
      return "A";
    } else if (score >= 70) {
      return "B";
    } else if (score >= 60) {
      return "C";
    } else if (score >= 50) {
      return "D";
    } else {
      return "F";
    }
  }
}

Student createStudent({
  required String name,
  required double score,
  double bonus = 0,
}) {
  double finalscore = score + bonus;

  return Student(name, finalscore);
}

void main() {
  Student s1 = createStudent(name: "Somchai", score: 70);
  s1.showInfo();
  print("Grade: ${s1.calculateGrade()}");
  Student s2 = createStudent(name: "Somyhing", score: 85, bonus: 5);
  s2.showInfo();
  print("Grade: ${s2.calculateGrade()}");
}