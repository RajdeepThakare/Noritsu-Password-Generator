import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: Center(
        child: Text(
          "${divStuff()}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 120.0,
            fontFamily: 'PIXymbols',
          ),
        ),
      ),
    );
  }
}

String toDay() {
  var dt = DateTime.now();
  var newFormat = DateFormat("dd");
  String updatedDt = newFormat.format(dt);
  String myVal = updatedDt.split('').reversed.join();
  return myVal;
}

String toMonth() {
  var dt = DateTime.now();
  var newFormat = DateFormat("MM");
  String updatedDt = newFormat.format(dt);
  String myVal = updatedDt.split('').reversed.join();
  return myVal;
}

String toYear() {
  var dt = DateTime.now();
  var newFormat = DateFormat("yyyy");
  String updatedDt = newFormat.format(dt);
  String myVal = updatedDt.split('').reversed.join();
  return myVal;
}

String addStrings() {
  return toDay() + toMonth() + toYear();
}

String divStuff() {
  var one = int.parse(addStrings());
  double stuff = one / 2260;
  var a = stuff.toString().split('.')[1].substring(0, 4);
  return a;
}
