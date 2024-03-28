// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/pawan.jpg"),
            ),
            Text(
              "Pawan Kumar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                fontSize: 30,
              ),
            ),
            Text(
              "Computer Science and Engineering",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'SansSource3-italic',
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 25,
                  color: Colors.teal,
                ),
                title: Text(
                  "+91 830-3385-440",
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'SansSource3-italic',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 30,
                  color: Colors.teal,
                ),
                title: Text(
                  "pawan630703@gmail.com",
                  style: TextStyle(
                    fontFamily: 'SansSource3-italic',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.teal,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
