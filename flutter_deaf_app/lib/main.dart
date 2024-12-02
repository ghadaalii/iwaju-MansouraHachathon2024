import 'package:deaf/UI/Screens/SignIn.dart';
import 'package:deaf/UI/Widgets/BottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://vxklexutlqkyqzaakfvn.supabase.co/',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ4a2xleHV0bHFreXF6YWFrZnZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMwNTkzMzgsImV4cCI6MjA0ODYzNTMzOH0.wFZaNhYEWWoIP09kS6XVqpCiUyI00lpfNaSGLZ51H80',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: BottomNavigation());
  }
}
