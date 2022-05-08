import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}