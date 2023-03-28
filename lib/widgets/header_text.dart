import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.heading});
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
