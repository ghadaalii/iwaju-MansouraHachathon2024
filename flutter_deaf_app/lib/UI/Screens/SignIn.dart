import 'package:deaf/UI/Screens/Joinscreen.dart';
import 'package:deaf/UI/Screens/Welocomescreen.dart';
import 'package:deaf/UI/Widgets/Textfields.dart';
import 'package:deaf/UI/Widgets/buttons.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 90, bottom: 70),
            child: Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Sign In to listen ',
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
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Textfield(
            obscureText: false,
            hint: "Example@Gmail.com",
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Textfield(
            obscureText: obscuretext,
            hint: "Passowrd",
            obscuringchar: "*",
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    obscuretext = !obscuretext;
                  });
                },
                icon: obscuretext
                    ? const Icon(
                        Icons.visibility_off,
                      )
                    : const Icon(
                        Icons.visibility,
                      )),
          ),
          const SizedBox(
            height: 30,
          ),
          button(
            title: "Sign In",
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Welocomescreen();
              }));
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Center(child: Image.asset("assets/images/Frame 56.png"))
        ],
      ),
    );
  }
}
