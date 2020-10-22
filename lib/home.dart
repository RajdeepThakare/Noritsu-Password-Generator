import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                "${divStuff()}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 120.0,
                  fontFamily: 'PIXymbols',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: RaisedButton(
                onPressed: _launchURL,
                child: Text(
                  'Project Sponsored by Rajdeep Digital Colour Lab, Wani.',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black12,
                elevation: 2.0,
              ),
              margin: EdgeInsets.all(15.0),
              width: 400.0,
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://g.page/Rajdeep-Lab?share';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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
