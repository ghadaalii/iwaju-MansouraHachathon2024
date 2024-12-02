import 'package:deaf/UI/Screens/HomeScreen.dart';
import 'package:deaf/UI/Widgets/BottomNavbar.dart';
import 'package:deaf/UI/Widgets/TextContact.dart';
import 'package:deaf/UI/Widgets/buttons.dart';
import 'package:flutter/material.dart';

class Contactscreen extends StatefulWidget {
  const Contactscreen({super.key});

  @override
  State<Contactscreen> createState() => _ContactscreenState();
}

class _ContactscreenState extends State<Contactscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Contact Us",
          style: TextStyle(
              fontSize: 35, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          TextContact(hint: "FullName"),
          TextContact(hint: "Email"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 500,
              child: TextFormField(
                maxLines: 10,
                maxLength: 400,
                autovalidateMode: AutovalidateMode.always,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "message",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 138, 137, 137)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          button(
            title: "Submit",
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BottomNavigation();
              }));
            },
          )
        ],
      ),
    );
  }
}
