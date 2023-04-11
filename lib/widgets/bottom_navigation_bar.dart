import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int updatedValue, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.withOpacity(0.2),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          currentIndex: updatedValue,
          onTap: (index) {
            // print(index);
            indexChangeNotifier.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icons/music-album.png'),
                size: 35,
              ),
              label: 'Your Library',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icons/social.png'),
                size: 30,
              ),
              label: 'Premium',
            )
          ],
          // backgroundColor: Colors.grey,
        );
      },
    );
  }
}
