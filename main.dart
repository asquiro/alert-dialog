import "package:flutter/material.dart";
import "./app_screen/home.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY First App Screen",
              style: TextStyle(
                color: Colors.deepPurple,
                decoration: TextDecoration.none,
              )),
        ),
        body: BookFlight(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orangeAccent,
      child: Center(
        child: Text("Hello Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.lightGreenAccent,
                fontSize: 20.0)),
      ),
    );
  }
}
