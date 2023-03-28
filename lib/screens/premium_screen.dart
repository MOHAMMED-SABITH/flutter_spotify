import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Premium screen',
         style: TextStyle(color: Colors.white),
      ),
    );
  }
}
