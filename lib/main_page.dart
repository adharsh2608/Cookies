import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/login.dart';
import 'package:firstapp/screen1.dart';
import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot)
          {
            if(snapshot.hasData)
              {
                return MyApp();
              }
            else
              {
                return LoginPage();
              }

          }
      ),
    );
  }
}
