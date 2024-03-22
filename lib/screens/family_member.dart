import 'package:flutter/material.dart';
import 'package:tokuapp/components/number_item.dart';
import 'package:tokuapp/models/number_model.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger sister'),
    Item(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: ' Younger brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'Older sister'),
    Item(
        sound: 'older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'Older bother'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'o bāchan',
        enName: 'Grandmother'),
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojīsan',
        enName: 'Grandfather'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xFF6D4C41),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (
          context,
          index,
        ) {
          return NumberItem(
            number: familyMembers[index],
            color: const Color(0xff33691E),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
