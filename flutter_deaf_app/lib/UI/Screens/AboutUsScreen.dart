import 'package:deaf/UI/Widgets/Containers.dart';
import 'package:flutter/material.dart';

class AboutUsscreen extends StatelessWidget {
  const AboutUsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            "About US",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
        ]));
  }
}
