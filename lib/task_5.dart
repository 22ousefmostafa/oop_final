class Teacher {
  String name;
  List<String> courses = [];

  Teacher(this.name);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    return true;
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      return true;
    }
    return false;
  }
}

void main() {
  Teacher teacher = Teacher("Dr. Ahmed");

  print(teacher.addCourse("Dart"));
  print(teacher.addCourse("Dart"));

  print(teacher.removeCourse("Dart"));
  print(teacher.removeCourse("Dart"));
}