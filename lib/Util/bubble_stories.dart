
import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({ Key? key, required this.text }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding:const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                 width: 50.0,
                 height: 50.0,
                 decoration: 
                 BoxDecoration(
                  shape:BoxShape.circle,
                  color: Colors.grey[400],
                 ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                Text(text),
              ],
          )  
          );
  }
}