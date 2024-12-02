import 'package:deaf/UI/Screens/HomeScreen.dart';
import 'package:deaf/UI/Screens/UploadScreen.dart';
import 'package:deaf/UI/Screens/chatScreen.dart';
import 'package:deaf/UI/Screens/profileScreen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentindex = 0;
  List<Widget> pages = [
    Homescreen(),
    Uploadscreen(),
    Chatscreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF0054B5),
          unselectedItemColor: Colors.black,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.auto_awesome), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
