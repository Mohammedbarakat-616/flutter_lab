import 'package:flutter/material.dart';
import 'package:flutter_application_7/drawer.dart';

class Lab3 extends StatelessWidget {
  const Lab3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
          backgroundColor: const Color.fromARGB(255, 13, 230, 193),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 13, 230, 193),
                child: const Text(
                  'I am container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Transform.rotate(
                angle: -0.2,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 13, 230, 193),
                  child: const Text(
                    'Hai, I am mohammed',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Transform.rotate(
                angle: -0.2,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 13, 230, 193),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'I am also Slanting, but see my edges',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 150,
                height: 150,
                color: const Color.fromARGB(255, 13, 230, 193),
                child: Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.yellow,
                    child: Center(
                      child: Container(
                        width: 90,
                        height: 90,
                        color: Colors.green,
                        child: Center(
                          child: Container(
                            width: 60,
                            height: 60,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
