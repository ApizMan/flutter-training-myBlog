import 'package:app_training/homepage/homepage.dart';
import 'package:app_training/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedItem = 0;
  //Options or page show in body when selected
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Add',
    ),
    Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.home_outlined,
          Icons.add_circle_outline_outlined,
          Icons.person_outline_outlined,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      //Body content of selected option from navigation bar
      body: Center(
        child: _widgetOptions.elementAt(_selectedItem),
      ),
    );
  }
}
