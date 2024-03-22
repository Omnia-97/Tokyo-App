import 'package:flutter/material.dart';
import 'package:tokuapp/components/number_item.dart';
import 'package:tokuapp/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrases> phases = const [
    Phrases(
        sound: 'are_you_coming.wav' ,
        jpName: 'Kimasu ka',
        enName: 'Are you coming'),
    Phrases(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide \nkudasai',
        enName: 'Dont forget to subscribe'),
    Phrases(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How are you feeling'),
    Phrases(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love Anime'),
    Phrases(
        sound: 'i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I love Programming'),
    Phrases(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantan',
        enName: 'Programming is easy'),
    Phrases(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'What is your name'),
    Phrases(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'Where are you going'),
    Phrases(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'Yes i am coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xFF6D4C41),
      ),
      body: ListView.builder(
        itemCount: phases.length,
        itemBuilder: (context , index,){
          return PhrasesItem(phrase:phases[index],
            color: Color(0xff448AFF),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
