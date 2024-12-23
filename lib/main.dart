import 'package:flutter/material.dart';
import 'package:flutter_application_7/drawer.dart';

void main() {
  runApp(const Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("main"),
          backgroundColor: Color.fromARGB(255, 13, 230, 193),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
