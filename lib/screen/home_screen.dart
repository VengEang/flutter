import 'package:flutter/material.dart';
import 'package:myapp/student.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

_buildStringText(String text1, {String text2}) {
  return Text(
    "This is $text1",
    style: TextStyle(
      fontSize: 20,
    ),
  );
}

_buildText(Student st) {
  return Text(
    "This is ${st.name} with id ${st.id}",
    style: TextStyle(fontSize: 20),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Student s1 = Student(id: "101", name: "Vengeang");
    Student s12 = Student.fromOldName(s1);

    Image.asset(name);
    Image.network(src);
    ListView.builder(itemBuilder: null);
    GridView.builder(gridDelegate: null, itemBuilder: null);

    return Scaffold(
      appBar: AppBar(
        title: Text("Dart OOP"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: _buildText(s12),
      ),
    );
  }
}
