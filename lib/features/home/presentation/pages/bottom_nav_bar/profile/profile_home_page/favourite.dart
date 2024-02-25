
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);
  static String name = "favourite";
  static String path = "/favourite_screen";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Text("favourite"),
      ),
    );
  }
}
