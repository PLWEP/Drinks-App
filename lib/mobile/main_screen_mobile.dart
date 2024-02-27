import 'package:cached_network_image/cached_network_image.dart';
import 'package:drinksapp/detail_screen.dart';
import 'package:drinksapp/model/drink.dart';
import 'package:flutter/material.dart';

class MainScreenMobile extends StatelessWidget {
  const MainScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Drink drink = drinkList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(
                    drink: drink,
                  );
                },
              ),
            );
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            elevation: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Rating ${drink.rating}',
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Icon(
                              Icons.star_border_outlined,
                              size: 16.0,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          drink.name,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.indigoAccent,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          drink.calories,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: drink.imageAsset,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: drinkList.length,
    );
  }
}
