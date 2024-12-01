import 'package:flutter/material.dart';

class button extends StatefulWidget {
  String title;
  void Function()? onpressed;
  button({super.key, required this.title, this.onpressed});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MaterialButton(
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF0054B5),
          onPressed: widget.onpressed,
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w900),
            ),
          )),
    );
  }
}
