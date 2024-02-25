
import 'package:flutter/material.dart';

class SellCenters extends StatelessWidget {
  const SellCenters({Key? key}) : super(key: key);
  static String name = "sell_centers_screen";
  static String path = "/sell_centers_screen";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Text("sell centers"),
      ),
    );
  }
}
