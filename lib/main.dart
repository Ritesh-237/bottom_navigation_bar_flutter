import 'package:code_improve/screens/create.dart';
import 'package:code_improve/screens/home_page.dart';
import 'package:code_improve/screens/profile.dart';
import 'package:code_improve/screens/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomAppBar(),
  ));
}

class BottomAppBar extends StatefulWidget {
  const BottomAppBar({Key? key}) : super(key: key);

  @override
  State<BottomAppBar> createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomAppBar> {
  int _currentIndex = 0;
  List<Widget> page = const [
    HomePage(),
    Search(),
    Create(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
            setState(() {
              _currentIndex = value;
            });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "create"),
          BottomNavigationBarItem(icon: Icon(Icons.ballot_sharp), label: "profile"),
        ],
      ),
    );
  }
}
