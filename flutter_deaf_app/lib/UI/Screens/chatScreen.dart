import 'package:deaf/UI/Screens/infoScreen.dart';
import 'package:deaf/UI/Widgets/chat.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 2),
          child: Text(
            "Chats",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                hintText: "Search",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 138, 137, 137)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Chat(
                    Name: "Ahmed", urlImage: "assets/images/Ellipse 1 (1).png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Farah", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Ghada", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Malk", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Mariam", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Malk", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
                Chat(Name: "Malk", urlImage: "assets/images/Ellipse 1.png"),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
