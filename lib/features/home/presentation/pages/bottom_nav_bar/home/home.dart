
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  static String name = "home_page_screen";
  static String path = "/home_page_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("home page"),
    );
  }
}
