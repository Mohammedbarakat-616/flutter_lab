import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3 ), () {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context) => Login(),
      ),
      (route) => false,);//  لي النقل الى الصفحة التي نقوم بي تحديدها و يقوم بي حذف splash
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color.fromARGB(255, 13, 230, 193) ,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50 ,
            backgroundImage: AssetImage("images/wallpaperflare.com_wallpaper (48).jpg"),),
          SizedBox(height: 10 ,),
          Text("lab6",
          style: TextStyle(decoration:TextDecoration.none),)
        ],
      ),
    );
  }
}
