
import 'package:flutter_application_7/_carousel_slider.dart';
import 'package:flutter_application_7/_circle_nav1.dart';
import 'package:flutter_application_7/_image_picker.dart';
import 'package:flutter_application_7/_provider.dart';
import 'package:flutter_application_7/_splashscreen.dart';
import 'package:flutter_application_7/ca1.dart';
import 'package:flutter_application_7/addstudent.dart';
import 'package:flutter_application_7/lab2.dart';
import 'package:flutter_application_7/lab3.dart';
import 'package:flutter_application_7/main.dart';
import 'package:flutter_application_7/login.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Drawer(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            const DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color.fromARGB(255, 13, 230, 193)),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/wallpaperflare.com_wallpaper (48).jpg"),
                    radius: 50,
                  ),
                 Expanded(child: Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  ) ,
                  SizedBox(height: 2),
                  Text("mohammed barakat.com"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 0),
                children: [
                  buildListTile(context, "Home", Icon(Icons.home), Myhome()),
                  buildListTile(context, "Login", Icon(Icons.login), Login(name: "mohammedbarakat")),
                  buildListTile(context, "lab2", Icon(Icons.label), Lab2()),
                  buildListTile(context, "lab3", Icon(Icons.label), Lab3()),
                  buildListTile(context, "lab4", Icon(Icons.label), Myhome()),
                  buildListTile(context, "lab5", Icon(Icons.label), const Addstudent()),                  
                   buildListTile(context, "CAL1", Icon(Icons.label), SimpleCalculatorPage()),
                  buildListTile(context, "splash screen", Icon(Icons.label), splashscreen()),
                  buildListTile(context, "_provider", Icon(Icons.label), MyApp()),
                  buildListTile(context, "ImagePickerExample", Icon(Icons.label), ImagePickerExample()),
                   buildListTile(context, "carousel_slider", Icon(Icons.label), CarouselDemo()),
                   buildListTile(context, "circle_nav1", Icon(Icons.label), MyAppa()),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(BuildContext context, String title, Icon icon, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text(title),
        tileColor: Colors.teal,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => page),
            (route) => false,
          );
        },
      ),
    );
  }
}
