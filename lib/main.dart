import 'package:flutter/material.dart';
import 'screen1.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(Apper());
}
class Apper extends StatelessWidget {
  const Apper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> LoginPage(),
        '/screen1': (context)=> MyApp(),
      },
    );
  }
}
