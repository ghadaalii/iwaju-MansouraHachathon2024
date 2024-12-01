import 'package:deaf/UI/Screens/OpeningScreen.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // const supabaseUrl = 'project url : https://vxklexutlqkyqzaakfvn.supabase.co';
  // const supabaseKey =
  //     'API key : eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ4a2xleHV0bHFreXF6YWFrZnZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMwNTkzMzgsImV4cCI6MjA0ODYzNTMzOH0.wFZaNhYEWWoIP09kS6XVqpCiUyI00lpfNaSGLZ51H80';
  // final supabase = SupabaseClient(supabaseUrl, supabaseKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Openingscreen());
  }
}
