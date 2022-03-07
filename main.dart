class Student {
  int roll;
  String name;
  bool pass;

  Student(this.roll, this.name, this.pass) {
    roll = roll;
    name = name;
    pass = pass;
  }
}

// student list
class StudentMain {
  List<Student> studentList = [
    Student(0, 'dude', true),
    Student(1, 'Ahsan Ali', false),
    Student(2, 'Bhutto', true),
    Student(3, 'Vladimir Putin', false)
  ];

//   ByID
  Student getStudentById(int id) {
    if (id < studentList.length) {
      return studentList[id];
    } else {
      return Student(0, 'null value', false);
    }
  }

  List getAllStudents() {
    return studentList;
  }

//  Add Student
  void addStudent(int roll, String name, bool pass) {
    int index =
        studentList.indexWhere((st) => st.name == name && st.roll == roll);

    if (index == -1) {
      print('student added {Roll:$roll Name:\'$name\' Pass:$pass}');
      studentList.add(Student(roll, name, pass));
    } else {
      print('student already exists at index $index');
    }
  }

//removeById
  void removeStudent(int roll) {
    if (-1 != studentList.indexWhere((st) => st.roll == roll)) {
      print('student removed successfully index: $roll');
      studentList.removeWhere((item) => item.roll == roll);
    } else {
      print('student not found! on index:$roll');
    }
  }
}

void main() {
  StudentMain student = StudentMain();

//   GetByID
  var byId = student.getStudentById(2);
  print(byId.name);

//   RemoveByID
  student.removeStudent(0);

//   AllStd
  var allStudent = student.getAllStudents();
  for (int i = 0; i < allStudent.length; i++) {
    print(' ${allStudent[i].roll} ${allStudent[i].name} ${allStudent[i].pass}');
  }

//   ADDStd
  student.addStudent(4, 'New Student', false);
}
