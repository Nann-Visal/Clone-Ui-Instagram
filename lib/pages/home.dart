

import 'package:flutter/material.dart';
import 'package:instagram_ui/Util/bubble_stories.dart';
import 'package:instagram_ui/Util/user_posts.dart';

class Home extends StatelessWidget {
   Home({ Key? key }) : super(key: key);
  final List people=['Visal','Tinut','Sengtray','Lyhour','Phanite','Visal','Tinut','Sengtray','Lyhour','Phanite'];

  get itemBuilder => null;
  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Row(
            children: const [
              Icon(Icons.camera_alt_outlined,size: 31.0,),
              SizedBox(width: 100.0,),
              Text('INSTAGRAM',
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
              ),
              SizedBox(width: 100.0,),
              Icon(Icons.near_me_outlined,size: 31.0,),
            ],
          ),
          shadowColor: const Color.fromARGB(255, 243, 236, 236),
      ),
      body: Column(
        children: [
          //stories user
           Container(
             height: 130,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: people.length,
               itemBuilder: ((context, index) {
                return BubbleStories(text: people[index]);
             }))
           ),
           //user posts
           Expanded(
             child:  ListView.builder(itemCount: people.length,itemBuilder: ((context, index) {
             return UserPosts(
               name: people[index],
             );
           }))
             ),
        ],
      ),
    );
  }
}