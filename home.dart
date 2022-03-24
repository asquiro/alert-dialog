import "package:flutter/material.dart";
import "dart:math";

class CourageMatthew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        color: Colors.cyan,
        alignment: Alignment.bottomLeft,
        child: Center(
            child: Text("my child's lucky number is ${generateLuckyNumber()}",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.green,
                  fontSize: 30.0,
                ))));
  }

  int generateLuckyNumber() {
    var random = Random();
    int luckyNumber = random.nextInt(12);
    return luckyNumber;
  }
}

class BookFlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        color: Colors.deepOrangeAccent,
        child: RaisedButton(
            color: Colors.lightBlue,
            child: Text("Book Flight",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                )),
            elevation: 5,
            onPressed: () {
              takeFlight(context);
            }));
  }
}

void takeFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text(
      "fligt booked successfully",
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 20.0,
      ),
    ),
    content: Text(
      "Have a pleasant flight",
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 10,
      ),
    ),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
