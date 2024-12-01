import 'package:deaf/UI/Screens/Welocomescreen.dart';
import 'package:deaf/UI/Widgets/Containers.dart';
import 'package:flutter/material.dart';

class Aboutscreen extends StatelessWidget {
  const Aboutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 50, left: 50, bottom: 8, top: 50),
              child: Text(
                "About US",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30, left: 30, bottom: 15, top: 0),
                  child: Containers(
                      image: Image.asset("assets/images/Frame 44.png"),
                      title: "Convert any voice to text in seconds",
                      subtitle:
                          "Speech-to-Text(STT)Technology uses AI to convert spoken language into written text.This is widely used in virtual assistants,transcription tools,and accessibility services."),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30, left: 30, bottom: 15, top: 0),
                  child: Containers(
                      image: Image.asset("assets/images/message.png"),
                      title: "Communicate with sign language specialists",
                      subtitle:
                          "Sign language technology connects users with specialists for translating int sign language.It supports video translation,enhancing communication for the deaf community"),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30, left: 30, bottom: 15, top: 0),
                  child: Containers(
                      image: Image.asset("assets/images/Frame 44 (2).png"),
                      title: "Finding special courses for the deaf",
                      subtitle:
                          "ICourses for the deaf offer tailored education using sign language and visual tools, ensuring assessiblitiy and promoting inclusivity."),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              "assets/images/Frame 19.png",
              width: 40,
              height: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 300),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Welocomescreen();
                  }));
                },
                child: const Text(
                  "Continue >",
                  style: TextStyle(color: Color.fromARGB(255, 136, 134, 134)),
                ),
              )),
        ],
      ),
    );
  }
}
