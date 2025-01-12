import 'package:flutter/material.dart';
import 'package:flutter_application_7/drawer.dart';

class Addstudent extends StatefulWidget {
  const Addstudent({super.key});

  @override
  State<Addstudent> createState() => AddstudentState();
}

class AddstudentState extends State<Addstudent> {
  List<String> student = ["ahammed", "mohammed", "ali"];
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('login'),
            backgroundColor: const Color.fromARGB(255, 13, 230, 193),
          ),
          drawer: MyDrawer(),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                child: TextField(
                  controller: name,
                  inputFormatters: [],
                  decoration: InputDecoration(
                      // labelText: "name",
                      hintText: "input name:",
                      label: const Text("NAME"),
                      fillColor: const Color.fromARGB(255, 13, 230, 193),
                      filled: true,
                      labelStyle: const TextStyle(fontSize: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                          )
                          ),
                ),
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    if (!student.contains(name.text) && name.text.isNotEmpty) {
                      student.add(name.text);
                      name.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                "Student already exists or name is empty")),
                      );
                    }
                  });
                },
                icon: Icon(Icons.add),
                label: Text("Add"),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: student.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: ListTile(
                        title: Text(student[i], textAlign: TextAlign.center),
                        tileColor: Colors.teal,
                        leading: IconButton(
                          onPressed: () {
                            setState(() {
                              student.removeAt(i);
                            });
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                        trailing: GestureDetector(
                          child: Icon(Icons.edit, color: Colors.amber),
                          onTap: () {
                            if (name.text.isNotEmpty) {
                              setState(() {
                                student[i] = name.text;
                                name.clear();
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Name cannot be empty")),
                              );
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
