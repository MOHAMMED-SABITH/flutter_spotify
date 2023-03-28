import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/screens/home_screem.dart';
import 'package:flutter_spotify/screens/library_screen.dart';
import 'package:flutter_spotify/screens/premium_screen.dart';
import 'package:flutter_spotify/screens/search_screen.dart';
import 'package:flutter_spotify/widgets/bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
    const HomeScreen(),
    const SearchScreen(),
    const LibraryScreen(),
    const PremiumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarWidget(),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return pages[index];
            },
          ),
        ));
  }
}
