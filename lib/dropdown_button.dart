import 'package:flutter/material.dart';

class drop_down extends StatefulWidget {
  const drop_down({Key? key}) : super(key: key);

  @override
  State<drop_down> createState() => _drop_downState();
}

class _drop_downState extends State<drop_down> {
  String option_value = "Monday";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(option_value);
        },
      ),
      body: Center(
        child: DropdownButton<String>(
          onChanged: (value) {
            setState(() {
              option_value = value!;
            });
          },
          value: option_value,
          items: [
            DropdownMenuItem(
              child: Text("Monday"),
              value: "Monday",
            ),
            DropdownMenuItem(
              child: Text("Tuesday"),
              value: "Tuesday",
            ),
            DropdownMenuItem(
              child: Text("Wednesday"),
              value: "Wednesdays",
            ),
            DropdownMenuItem(
              child: Text("Thursday"),
              value: "Thursday",
            ),
            DropdownMenuItem(
              child: Text("Friday"),
              value: "Friday",
            ),
            DropdownMenuItem(
              child: Text("Saturday"),
              value: "Saturday",
            ),
            DropdownMenuItem(
              child: Text("Sunday"),
              value: "Sunday",
            ),
          ],
        ),
      ),
    );
  }
}
