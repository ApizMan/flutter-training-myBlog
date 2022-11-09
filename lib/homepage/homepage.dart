// ignore_for_file: deprecated_member_use

import 'package:app_training/homepage/components/homepage_body.dart';
import 'package:app_training/public_components/animated_search_bar.dart';
import 'package:app_training/public_components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AnimatedSearchBar(
          searchDecoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
          ),
          closeIcon: Icon(
            Icons.close,
            color: Colors.grey[900],
          ),
          searchIcon: Icon(
            Icons.search_rounded,
            color: Colors.grey[900],
            size: 30,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          label: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "MyBlog",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
          alignment: TextAlign.start,
          onChanged: (value) {},
        ),
        titleTextStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.grey[900],
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowGlow();
                  return true;
                },
                child: HomePageBody(),
              ))),
    );
  }
}
