import 'package:deaf/UI/Screens/AboutScreen.dart';
import 'package:flutter/material.dart';

class Openingscreen extends StatelessWidget {
  const Openingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
              child: Image.asset("assets/images/Group 1.png")),
          Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            height: 450,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: 120,
                  child: Image.asset(
                    "assets/images/Ellipse 6.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Nothing ',
                          style: TextStyle(
                            color: Color(0xFF172D48),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'can',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: const TextSpan(
                          text: 'stop you',
                          style: TextStyle(
                            color: Color(0xFF172D48),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' !',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    top: 190,
                    left: 20,
                    child: Text(
                      "Hundreds of people are here to help you",
                      style: TextStyle(color: Color(0xFF0054B5), fontSize: 18),
                    )),
                const Positioned(
                    top: 230,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Empowering the Deaf community to thrive.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 136, 134, 134)),
                        ),
                        Text("A platform for learning, connection,and",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 136, 134, 134))),
                        Text("meaningful opportunities.",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 136, 134, 134)))
                      ],
                    ))
              ],
            ),
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
            padding: const EdgeInsets.only(left: 320),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Aboutscreen();
                }));
              },
              child: const Text(
                "skip >",
                style: TextStyle(color: Color.fromARGB(255, 136, 134, 134)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
