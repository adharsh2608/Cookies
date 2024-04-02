import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagepic = "Check.jpeg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'PERSONAL CARD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.teal[100],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent[100],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (imagepic == "photo1.png")
                        imagepic = "Check.jpeg";
                      else
                        imagepic = "photo1.png";
                    });
                  },
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('Images/$imagepic'),
                  ),
                ),
                Text(
                  'Adharsh Anand',
                  style: TextStyle(
                      fontFamily: 'Honk',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Master in Applied Computer Science',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('+1 438-722-8953'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'adharshrtc@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {

                          Navigator.pushNamed(context, '/myapp');
                        },
                        child: Text(
                          'Hey',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
