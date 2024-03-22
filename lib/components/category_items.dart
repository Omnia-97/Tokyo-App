import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.style, this.onTap});
  String? text;
  Color? color;
  TextStyle? style;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        color: color,
        child: Text(text!, style: style),
      ),
    );
  }
}
