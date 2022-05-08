
import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/favorite.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/post.dart';
import 'package:instagram_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _childrend=[
     Home(),
     const Search(),
     const Post(),
     const Favorite(),
     const AccountPerson(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _childrend[_selectedIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        fixedColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        items: const 
         [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'Post'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: 'Accont'),
         ]
      ) ,
    );
  }
}