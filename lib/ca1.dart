import 'package:flutter/material.dart';
import 'package:flutter_application_7/drawer.dart';

class SimpleCalculatorPage extends StatefulWidget {
  @override
  State<SimpleCalculatorPage> createState() => SimpleCalculatorPageState();
}

class SimpleCalculatorPageState extends State<SimpleCalculatorPage> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  String result = "";

  void performOperation(String operation) {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0;

    setState(() {
      switch (operation) {
        case "+":
          result = (firstNumber + secondNumber).toString();
          break;
        case "-":
          result = (firstNumber - secondNumber).toString();
          break;
        case "*":
          result = (firstNumber * secondNumber).toString();
          break;
        case "/":
          if (secondNumber != 0) {
            result = (firstNumber / secondNumber).toString();
          } else {
            result = "Cannot divide by zero";
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("آلة حاسبة بسيطة"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: firstNumberController,
              decoration: InputDecoration(
                hintText: " الاول",
                      label: const Text("الرقم الاول"),
                      fillColor: const Color.fromARGB(255, 13, 230, 193),
                      filled: true,
                      labelStyle: const TextStyle(fontSize: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                          )
                ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: secondNumberController,
              decoration: InputDecoration(
              hintText: " الثاني",
                      label: const Text("الرقم الثاني"),
                      fillColor: const Color.fromARGB(255, 13, 230, 193),
                      filled: true,
                      labelStyle: const TextStyle(fontSize: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                          )
                ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => performOperation("+"),
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation("-"),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation("*"),
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () => performOperation("/"),
                  child: Text("/"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "النتيجة: $result",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}