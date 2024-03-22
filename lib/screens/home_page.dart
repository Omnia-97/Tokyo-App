import 'package:flutter/material.dart';
import 'package:tokuapp/screens/colors_page.dart';
import 'package:tokuapp/screens/family_member.dart';
import 'package:tokuapp/screens/numbers_page.dart';
import 'package:tokuapp/screens/phrases_page.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffD7CCC8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF6D4C41),
          title: const Text(
            'Toku',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffFF9800),
            style: const TextStyle(color: Colors.white, fontSize: 23),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMember();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff33691E),
            style: const TextStyle(color: Colors.white, fontSize: 23),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff9575CD),
            style: const TextStyle(color: Colors.black, fontSize: 23),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff448AFF),
            style: const TextStyle(color: Colors.black, fontSize: 23),
          ),
        ]),
      ),
    );
  }
}
