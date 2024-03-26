import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "torch App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TorchApp(),
    );
  }
}

class TorchApp extends StatefulWidget {
  const TorchApp({super.key});

  @override
  State<TorchApp> createState() => _TorchAppState();
}

class _TorchAppState extends State<TorchApp> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  bool isOn = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(title: const Text("Torch App")),
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Torch App',
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        maxRadius: 50,
                        child: Transform.scale(
                          scale: 2,
                          child: IconButton(
                            onPressed: () {
                              controller.toggle();
                              setState(() {
                                isOn = !isOn;
                              });
                            },
                            icon: const Icon(Icons.power_settings_new),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Text(
            'Developed by Pawan Kumar ❤️',
            style: TextStyle(
              color: textColor,
              fontSize: 12.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          )
        ],
      ),
    );
  }
}