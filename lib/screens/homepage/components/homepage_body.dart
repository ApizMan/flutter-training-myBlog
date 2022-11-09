import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<String> image = [
    "assets/images/profilepic.png",
    "assets/images/profilepic.png",
  ];

  List<String> name = [
    "Emily Larkson",
    "Emily Larkson",
  ];

  List<String> imageDetail = [
    "assets/images/imageDetail.png",
    "assets/images/imageDetail.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SingleChildScrollView(
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
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                            child: Image(
                          image: AssetImage(image[index]),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(name[index]),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image(
                        width: 320,
                        fit: BoxFit.cover,
                        image: AssetImage(imageDetail[index]),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "How to become Software Engineer",
                          style: TextStyle(
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        "   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquet porttitor lacus luctus accumsan tortor posuere ac.",
                        maxLines: 4,
                        style: TextStyle(color: Colors.blueGrey[200]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueGrey.shade900,
                                    width: 1,
                                  ),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                      ),
                                    ),
                                    Text(
                                      "Edit Post",
                                      style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
