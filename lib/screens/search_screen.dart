import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/search_screen_suggestion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                // controller: textController,
                // onSubmitted: (value) => search(value),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.search_outlined,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'What do you want to listen to?',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Browse all',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(child: SearchscreenSuggestion())
            ],
          ),
        ),
      ),
    );
    // const Center(
    //   child: Text(
    //     'Search screen',
    //     style: TextStyle(color: Colors.white),
    //   ),
    // );
  }
}
