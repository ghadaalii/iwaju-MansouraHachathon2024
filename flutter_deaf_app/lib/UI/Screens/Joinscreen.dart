import 'package:deaf/UI/Widgets/buttons.dart';
import 'package:flutter/material.dart';

class Joinscreen extends StatelessWidget {
  const Joinscreen({super.key});

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
          const Center(
            child: Text("Join us as ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                )),
          ),
          const SizedBox(
            height: 45,
          ),
          button(
            title: "An Instructor",
            onpressed: () {},
          ),
          const SizedBox(
            height: 1,
          ),
          button(
            title: "A deaf Learner",
            onpressed: () {},
          ),
        ],
      ),
    );
  }
}
