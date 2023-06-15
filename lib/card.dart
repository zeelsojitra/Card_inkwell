import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          color: Colors.amber,
          elevation: 20,
          shadowColor: Colors.amber,
          child: InkWell(
            splashColor: Colors.pink,
            onTap: () {
              print("object");
            },
            child: Ink(
              width: 200,
              height: 200,
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}
