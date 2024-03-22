import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/models/number_model.dart';
import 'package:tokuapp/models/phrases_model.dart';
class ListItem extends StatelessWidget {
  const ListItem({Key? key,required this.color, required this.number, required this.itemType,} ) : super(key: key);
final Item number;
final Color color;
final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffffddb0),
              child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child:
              IconButton(onPressed:(){
               AudioCache player =AudioCache(prefix: 'assets/sounds/$itemType/');
               player.play(number.sound);
               } , icon: Icon(Icons.play_arrow, color: Colors.white,size: 30,),),
          ),
        ],
      ),
    );
  }
}
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.phrase, required this.color,required this.itemType}) : super(key: key);
  final Phrases phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child:
            IconButton(onPressed:(){
              AudioCache player =AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(phrase.sound);
            } , icon: Icon(Icons.play_arrow, color: Colors.white,size: 30,),),
          ),
        ],
      ),
    );
  }
}

