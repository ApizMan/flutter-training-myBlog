import 'package:app_training/screens/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:app_training/screens/post/post.dart';
import 'package:app_training/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedItem = 0;
  //Options or page show in body when selected
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Post(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.home_outlined,
          Icons.control_point_sharp,
          Icons.person_outline_outlined,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
            _selectedItem == 1
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Post(),
                    ))
                : null;
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
