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
        backgroundColor: Color(0xffD7CCC8),
        appBar: AppBar(
          backgroundColor: Color(0xFF6D4C41),
          title: Text('Toku',
            style: TextStyle(color: Colors.white, fontSize: 32,),
          ),
        ),
        body: Column(children: [
          Category(
            onTap:(){
              Navigator.push(context, MaterialPageRoute( builder:(context) {
                return NumberPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffFF9800),
            style:  TextStyle(color: Colors.white,
                fontSize: 23),
          ),
          Category(
            onTap:(){
              Navigator.push(context, MaterialPageRoute( builder:(context) {
                return FamilyMember();
              }));
            },
            text: 'Family Members',
            color: Color(0xff33691E),
            style:  TextStyle(color: Colors.white,
                fontSize: 23),
          ),
          Category(
            onTap:(){
              Navigator.push(context, MaterialPageRoute( builder:(context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color(0xff9575CD),
            style:  TextStyle(color: Colors.black,
                fontSize: 23),
          ),
          Category(
            onTap:(){
              Navigator.push(context, MaterialPageRoute( builder:(context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xff448AFF),
            style:  TextStyle(color: Colors.black,
                fontSize: 23),
          ),
        ]
        ),
      ),
    );
  }
}
