import 'package:deaf/UI/Screens/chatScreen.dart';
import 'package:deaf/UI/Screens/infoScreen.dart';
import 'package:flutter/material.dart';

class Uploadscreen extends StatelessWidget {
  const Uploadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 40,
                      )),
                  const SizedBox(
                    width: .5,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return InfoScreen();
                        }));
                      },
                      icon: const Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 40,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Convert Audio or video to text",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 45),
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.5, color: const Color.fromARGB(255, 77, 76, 76)),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/upload to cloud.png"),
                    const Text(
                      "Upload Your Files",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text(
                            "Drag and drop your files here or ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 132, 131, 131),
                                fontSize: 15),
                          ),
                        ),
                        TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Chatscreen();
                              }));
                            },
                            child: const Text(
                              "choose files",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Convert Audio or Video to AI Sign Language Video",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Center(
                child: Text(
                  "Coming Soon !!!!",
                  style: TextStyle(
                      color: Color(0xFF0054B5),
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
