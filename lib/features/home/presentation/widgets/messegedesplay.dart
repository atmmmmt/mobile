
import 'package:flutter/material.dart';

class MessageDisplay extends StatelessWidget {
final String message;

  const MessageDisplay({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(message),
      ],
    );
  }
}
