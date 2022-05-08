

import 'package:flutter/material.dart';


class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({
    Key? key,
    required this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              Row(
                children: [
                  //profile photo
                  Container(
                   width: 50.0,
                   height: 50.0,
                   decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                   ),
                  ),
                  const SizedBox(
                   width: 10.0,
                  ),
                  //user name
                  Text(name,style: const TextStyle(fontWeight:FontWeight.bold),
                ),
               ],
              ),
              //icon
              const Icon(Icons.more_horiz),
            ],
          ),
        ),

        //post
        Container(
          height: 400.0,
          color: Colors.grey[300],
        ),
        //below posts => button and comment
        Padding(
          padding:const  EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border_outlined,size: 30.0,),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.circle_outlined,size: 30.0,),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.near_me_outlined,size: 30.0,),
                ],
              ),
              const Icon(Icons.bookmark_outline,size: 30.0,),
            ],
          ),
        ),
        //number of like
        Padding(
          padding: const EdgeInsets.only(left: 20.0,),
          child: Row(
            children: const [
               Text('2.875',style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(width: 5.0,),
               Text('Likes',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        //comment
         Padding(
          padding: const EdgeInsets.only(left: 20.0,),
          child: Row(
            children: const [
               Text('marinadillaco Hi!!',),
               SizedBox(width: 5.0,),
               Text('#marinad',style: TextStyle(color: Colors.blue),),
            ],
          ),
        ),
      ],
    );
  }
}
