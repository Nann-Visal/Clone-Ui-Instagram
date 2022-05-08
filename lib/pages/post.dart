import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Post')),
    );
  }
}