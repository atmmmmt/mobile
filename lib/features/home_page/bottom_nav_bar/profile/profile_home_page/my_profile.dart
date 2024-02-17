import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);
  static String name = "my_profile";
  static String path = "/my_profile_screen";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Text("my profile"),
      ),
    );
  }
}