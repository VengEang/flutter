import 'dart:js';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:myapp/mylogin_page.dart';
// import 'package:myapp/student.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _logo =
      "https://p1.hiclipart.com/preview/743/354/454/avengers-age-of-ultron-logo-avengers-logo-png-clipart-thumbnail.jpg";
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _buildButton,
    );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.red[400],
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () => print("Logo clicked"),
          child: Image.network(_logo),
        ),
      ),
      title: Text("Interface Flutter"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.person_search),
          onPressed: () => print("search clicked"),
        ),
      ],
    );
  }

  get _buildBody {
    int numBer = _page + 1;
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(numBer.toString(), textScaleFactor: 10.0),
            RaisedButton(
              child: Text('Go To Page of index 1'),
              onPressed: () {
                final CurvedNavigationBarState navBarState =
                    _bottomNavigationKey.currentState;
                navBarState.setPage(0);
              },
            )
          ],
        ),
      ),
    );
  }

  get _buildButton => CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            // Navigator.push(context, MaterialPageRoute(builder: context()=>HomeScreen(),));
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      );
} //class home screen
