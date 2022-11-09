// ignore_for_file: deprecated_member_use

import 'package:app_training/homepage/homepage.dart';
import 'package:app_training/sign_up/components/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(
            child: Text("Registration"),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return true;
          },
          child: SignUpBody(),
        ),
      ),
    );
  }
}
