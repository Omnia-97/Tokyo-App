import 'package:flutter/material.dart';
import 'package:tokuapp/components/number_item.dart';
import 'package:tokuapp/models/number_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colorsPage = const [
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty yellow'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown'),
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xFF6D4C41),
      ),
      body: ListView.builder(
        itemCount: colorsPage.length,
        itemBuilder: (
          context,
          index,
        ) {
          return NumberItem(
            number: colorsPage[index],
            color: const Color(0xff9575CD),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
