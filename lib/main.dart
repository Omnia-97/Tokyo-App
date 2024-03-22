import 'package:flutter/material.dart';
import 'package:tokuapp/screens/home_page.dart';
void main() {
  runApp( TokuApp ());
}
class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    }
}

