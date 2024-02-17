import 'package:flutter/material.dart';

class MyCodes extends StatelessWidget {
  const MyCodes({Key? key}) : super(key: key);
  static String name = "my_codes";
  static String path = "/my_codes_screen";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Text("my codes"),
      ),
    );
  }
}