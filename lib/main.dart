import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/pages/home_page.dart';
import 'package:flutter_airbnb/constants.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}