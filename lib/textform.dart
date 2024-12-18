import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textform extends StatefulWidget {
  const textform({super.key});

  @override
  State<textform> createState() => _textformState();
}

class _textformState extends State<textform> {
  var num1_controller = TextEditingController();
  var num2_controller = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "Simple Calculator",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: num1_controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          label: Text("Num1"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white), // Border when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red, width: 2.0), // Border when focused
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: num2_controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text("Num2"),
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white), // Border when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.red, width: 2.0), // Border when focused
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    "Result: ${result.toString()}", // Convert result to String
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = int.parse(num1_controller.text) +
                              int.parse(num2_controller.text);
                        });
                      },
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = int.parse(num1_controller.text) -
                              int.parse(num2_controller.text);
                        });
                      },
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = int.parse(num1_controller.text) *
                              int.parse(num2_controller.text);
                        });
                      },
                      child: Icon(Icons.clear),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          result = int.parse(num1_controller.text) ~/
                              int.parse(num2_controller.text);
                        });
                      },
                      child: Text(
                        "÷",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// TextFormField(
// controller: num1_controller,
// decoration: InputDecoration(
// labelText: "Num1",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20),
// borderSide: BorderSide(color: Colors.teal), // Default border color
// ),

// ),
// ),
