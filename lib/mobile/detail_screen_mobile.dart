import 'package:cached_network_image/cached_network_image.dart';
import 'package:drinksapp/detail_screen.dart';
import 'package:drinksapp/model/drink.dart';
import 'package:flutter/material.dart';

class DetailMobilePage extends StatelessWidget {
  final Drink drink;

  const DetailMobilePage({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                drink.price,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  ),
                ),
                child: const Text(
                  "Pesan",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Anda memesan ${drink.name}',
                      ),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: drink.imageAsset,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    drink.name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 40.0,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: LoveButton(),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Row(
                    children: <Widget>[
                      const Icon(Icons.balance_rounded),
                      const SizedBox(
                        height: 8.0,
                        width: 5.0,
                      ),
                      Text(
                        drink.weight,
                        style: const TextStyle(
                          fontSize: 13.0,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                    width: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.star_border_outlined),
                      const SizedBox(
                        height: 8.0,
                        width: 5.0,
                      ),
                      Text(
                        drink.rating,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                drink.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
