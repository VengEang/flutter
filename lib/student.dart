class Student {
  String id;
  String name;

  Student({this.id, this.name});

  Student.fromOldName(Student oldStudent) {
    this.id = "2020${oldStudent.id}";
    this.name = oldStudent.name;
  }
  void register() {
    print("Register $name");
  }
}
