import 'package:flutter/material.dart';

class TextContact extends StatelessWidget {
  String? hint;

  TextEditingController? controller;

  TextContact({super.key, this.controller, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          controller: controller,
          style: const TextStyle(color: Colors.black),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 138, 137, 137)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
