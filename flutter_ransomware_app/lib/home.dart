//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: null,
        backgroundColor: Colors.black87,
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Column(
              children: [
                Text(
                  "Your System has been compromised",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      fontFamily: "RobotoSlab"),
                ),
                Text(
                    "Your system has been encrypted and data will be destroyed in %d:%d:%d",
                    style: TextStyle(
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: "RobotoSlab")),
                Form(
                    child: Column(
                  children: [TextFormField(), TextFormField(), TextFormField()],
                ))
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
