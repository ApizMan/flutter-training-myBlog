import 'package:app_training/screens/homepage/homepage.dart';
import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        //Name
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.grey.shade200,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(
                    Icons.person_outline_rounded,
                  ),
                  hintText: "Name",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        //Email
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.grey.shade200,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        //Password
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                ),
              ],
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                  ),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "*Use combination of letters and numbers with minimum 8 letters",
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 11,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //Confirm Password
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.grey.shade200,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                  ),
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 190,
        ),
        //Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 120.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey[900],
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
