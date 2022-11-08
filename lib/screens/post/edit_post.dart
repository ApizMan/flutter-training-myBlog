
import 'package:app_training/screens/post/components/edit_post_body.dart';
import 'package:flutter/material.dart';

class EditPost extends StatefulWidget {
  EditPost({Key? key}) : super(key: key);

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Edit Blog Post",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(child: EditPostBody()));
  }
}
