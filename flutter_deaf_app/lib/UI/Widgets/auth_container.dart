import 'package:deaf/UI/Screens/OpeningScreen.dart';
import 'package:deaf/UI/Screens/UploadScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({super.key});

  Future<bool> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('user_token');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkLoginStatus(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // إذا كان هناك خطأ
        if (snapshot.hasError) {
          return const Center(
              child: Text('Error occurred while checking login status'));
        }

        // التوجيه بناءً على حالة تسجيل الدخول
        if (snapshot.data == true) {
          return const Uploadscreen();
        } else {
          return const Openingscreen();
        }
      },
    );
  }
}
