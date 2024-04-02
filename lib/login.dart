import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth_services.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthServices _auth =FirebaseAuthServices();
  final _emailController= TextEditingController();
  final _passwordController= TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim(),);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("COOKIE",
                      style: TextStyle(
                          fontSize: 80,
                          fontFamily: 'Honk'
                      ),
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.cookie, size: 60,),

                  ],
                ),
                SizedBox(height: 10,),
                Text("Welcome back you've been missed!",
                  style: TextStyle(

                    fontSize: 20,
                  ),

                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: 'Email ID',
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: _signIn,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                  
                            decoration: BoxDecoration(color: Colors
                                .deepPurpleAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text('Cream In', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Register Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
    void _signIn() async
    {
      String email= _emailController.text;
      String password= _passwordController.text;

      User? user= await _auth.signInWithEmailAndPassword(email, password);
      if(user!= null)
        {
          print('Signed In Successfully.');
        }
      else
        {
          print('Some error happened');
        }
    }

}
