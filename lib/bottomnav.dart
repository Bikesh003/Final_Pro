import 'package:flutter/material.dart';
import 'package:loginpage/use_me/cartpg.dart';
import 'package:loginpage/use_me/HomePage.dart';
import 'package:loginpage/use_me/offers.dart';
import 'package:loginpage/use_me/profile.dart';
import 'package:loginpage/models/place_model.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({Key? key}) : super(key: key);

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int _currentindex = 0;

  final List<Widget> _children = [HomePage(), CartPage(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: 'Cart',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.local_offer_outlined),
          //   label: 'Offers',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
