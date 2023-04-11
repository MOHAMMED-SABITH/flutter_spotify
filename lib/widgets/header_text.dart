import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.heading});
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
    );
  }
}
