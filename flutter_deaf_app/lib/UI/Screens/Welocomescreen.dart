import 'package:deaf/UI/Screens/Joinscreen.dart';
import 'package:deaf/UI/Screens/SignIn.dart';
import 'package:deaf/UI/Widgets/buttons.dart';
import 'package:flutter/material.dart';

class Welocomescreen extends StatefulWidget {
  const Welocomescreen({super.key});

  @override
  State<Welocomescreen> createState() => _WelocomescreenState();
}

class _WelocomescreenState extends State<Welocomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 45, right: 45, top: 45, bottom: 20),
            child: Image.asset("assets/images/Group 1.png"),
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                text: 'Welcome to listen ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
                children: [
                  TextSpan(
                    text: 'db',
                    style: TextStyle(
                      color: Color(0xFF0054B5),
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          button(
              title: "Sign Up",
              onpressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Joinscreen();
                }));
              }),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Already have an account ?",
              style: TextStyle(color: Color.fromARGB(255, 126, 125, 125)),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          button(
            title: "Sign In",
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Signin();
              }));
            },
          )
        ],
      ),
    );
  }
}
