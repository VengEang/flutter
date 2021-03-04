import 'package:flutter/material.dart';
// import 'package:myapp/mylogin_page.dart';
// import 'package:myapp/student.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // MyLogin login = MyLogin();
    // login.myPassword = "d";
    showMessege(Car("Toyota"));
    showMessege(Bike("Giant"));
    showMessege(Tuktuk("vespa"));
    // print(Tuktuk("today"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Dart OOP"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "login.hackPassword",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  showMessege(Vichicle v) {
    v.display();
  }
}

abstract class Vichicle {
  String name;
  Vichicle(this.name);
  display();
}

class Car extends Vichicle {
  Car(String name) : super(name);

  display() {
    return print(name);
  }
}

class Bike extends Vichicle {
  Bike(String name) : super(name);

  @override
  display() {}
}

class Tuktuk extends Vichicle {
  Tuktuk(String name) : super(name);

  @override
  display() {}
}
