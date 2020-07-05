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
            alignment: Alignment.bottomLeft,
            child: Container(
              child: RaisedButton(
                onPressed: _launchURL,
                child: new Text('Learn More'),
              ),
              margin: EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/RajdeepThakare/Noritsu-Password-Generator';
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
