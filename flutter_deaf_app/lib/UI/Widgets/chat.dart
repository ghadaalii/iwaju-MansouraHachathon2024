import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  String urlImage;
  String Name;
  Chat({required this.Name, required this.urlImage});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 196, 194, 194),
            borderRadius: BorderRadius.circular(8)),
        child: MaterialButton(
          onPressed: () {},
          child: ListTile(
            leading: Image.asset(urlImage),
            title: Text(
              Name,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ));
  }
}
