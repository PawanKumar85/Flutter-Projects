import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My App",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          // elevation: 0.0,
        ),
        body: const MyBody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int _count = 0;

  void _increament() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  SizedBox mySizedBox({double myheight = 0, double mywidth = 0}) {
    return SizedBox(
      height: myheight,
      width: mywidth,
    );
  }

  ElevatedButton myElevatedButton(void Function()? action, String myName) {
    return ElevatedButton(
      onPressed: action,
      child: Text(
        myName,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(
          child: Text(
            "You Push the button this many time.",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
            ),
          ),
        ),
        mySizedBox(myheight: 10),
        Text(
          _count.toString(),
          style: const TextStyle(
            fontSize: 34,
          ),
        ),
        mySizedBox(myheight: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myElevatedButton(_increament, "Add Me"),
            mySizedBox(mywidth: 10),
            myElevatedButton(_decrement, "Sub Me"),
          ],
        ),

        
        mySizedBox(myheight: 100),
        const Text(
          "Developed by Pawan Kumar ❤️",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
