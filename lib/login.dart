import 'package:flutter/material.dart';

import 'package:flutter_application_7/drawer.dart';

class Login extends StatelessWidget {
  Login({ this.name = ""});

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 230, 193),
        title: Text("login" + name),
      ),
      drawer: MyDrawer(),
    );
  }
}
