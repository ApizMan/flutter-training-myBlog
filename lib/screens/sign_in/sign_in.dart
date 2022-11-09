// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app_training/screens/homepage/homepage.dart';
import 'package:app_training/screens/sign_in/components/sign_in_body.dart';
import 'package:app_training/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SignInBody(),
        ),
      ),
    );
  }
}
