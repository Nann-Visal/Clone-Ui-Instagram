
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
          title: Row(
            children: const [
              Icon(Icons.backpack,size: 31.0,),
            ],
          ),
      ),
    );
  }
}