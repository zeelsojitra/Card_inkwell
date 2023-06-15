import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 50,
          shadowColor: Colors.black,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide.none,
          ),
          child: InkWell(
            onTap: () {
              print("Cliked");
            },
            splashColor: Colors.black,
            child: Ink(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
