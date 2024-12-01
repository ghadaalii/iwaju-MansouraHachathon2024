// import 'package:supabase_flutter/supabase_flutter.dart';

// Future<void> signUp(String email, String password) async {
//   try {
//     final response = await Supabase.instance.client.auth.signUp(
//       email: email,
//       password: password,
//     );

//     if (response.user != null) {
//       print('Sign up successful: ${response.user!.email}');
//     } else if (response.error != null) {
//       print('Sign up error: ${response.error!.message}');
//     }
//   } catch (e) {
//     print('Unexpected error during sign up: $e');
//   }
// }

// extension on AuthResponse {
//   get error => null;
// }

// Future<void> signIn(String email, String password) async {
//   try {
//     final response = await Supabase.instance.client.auth.signInWithPassword(
//       email: email,
//       password: password,
//     );

//     if (response.session != null) {
//       print('Sign in successful: ${response.session!.user.email}');
//     } else if (response.error != null) {
//       print('Sign in error: ${response.error!.message}');
//     }
//   } catch (e) {
//     print('Unexpected error during sign in: $e');
//   }
// }

// void listenToAuthChanges() {
//   Supabase.instance.client.auth.onAuthStateChange.listen((event) {
//     final session = event.session;
//     if (session != null) {
//       print('User logged in: ${session.user.email}');
//     } else {
//       print('User logged out');
//     }
//   });
// }
