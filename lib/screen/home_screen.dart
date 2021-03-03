import 'package:flutter/material.dart';
import 'package:myapp/mylogin_page.dart';
// import 'package:myapp/student.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MyLogin login = MyLogin();
    login.myPassword = "d";
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart OOP"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          login.hackPassword,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
