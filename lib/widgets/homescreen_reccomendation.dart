import 'package:flutter/material.dart';
 
import '../data/dummy_data.dart';

class HomeScreenReccomendation extends StatelessWidget {
  const HomeScreenReccomendation({super.key});

  @override
  Widget build(BuildContext context) {
    const title = searchSuggestionTileTitle;
    const reccomendImages = homeScreenReccomendationImages;
    return GridView.count(
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 3 / 1,
      children: List.generate(6, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: double.infinity,
                child: Image(
                  image: NetworkImage(
                    reccomendImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  title[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
