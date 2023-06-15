import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int optionValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(optionValue);
        },
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: DropdownButton<int>(
          onChanged: (value) {
            setState(() {
              optionValue = value!;
            });
          },
          value: optionValue,
          items: [
            DropdownMenuItem(
              child: Text("one"),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text("two"),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text("three"),
              value: 3,
            ),
          ],
        ),
      ),
    );
  }
}
