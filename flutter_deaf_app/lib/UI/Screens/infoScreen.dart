import 'package:deaf/UI/Screens/AboutScreen.dart';
import 'package:deaf/UI/Screens/AboutUsScreen.dart';
import 'package:deaf/UI/Screens/ContactScreen.dart';
import 'package:deaf/UI/Screens/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoState();
}

class _InfoState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AboutUsscreen();
                  }));
                },
                child: const Text(
                  'About Us',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Contactscreen();
                  }));
                },
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  Future<void> logOutUser() async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('user_token');
                    await Supabase.instance.client.auth.signOut();
                    print("User logged out successfully!");
                  }

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signin();
                  }));
                },
                child: const Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    ));
  }
}
