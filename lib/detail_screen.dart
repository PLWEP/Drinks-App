import 'package:flutter/material.dart';
import 'package:drinksapp/model/drink_model.dart';

class DetailScreen extends StatelessWidget {
  final Drink drink;

  const DetailScreen({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailWebPage(drink: drink);
        } else {
          return DetailMobilePage(drink: drink);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Drink drink;

  const DetailMobilePage({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(drink.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                children: <Widget>[
                  Text(
                    drink.name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 40.0,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: const LoveButton(),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: <Widget>[
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
                  SizedBox(
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
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    drink.price,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 100)),
                    ),
                    child: const Text(
                      "Pesan",
                      style: const TextStyle(
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
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoveButton extends StatefulWidget {
  const LoveButton({Key? key}) : super(key: key);

  @override
  _LoveButtonState createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLove ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isLove = !isLove;
        });
      },
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final Drink drink;

  const DetailWebPage({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 60,
        ),
        child: Center(
          child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100),
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.network(drink.imageAsset),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                splashRadius: 15.0,
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 15.0,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Text("Kembali"),
                            ],
                          ),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        drink.name,
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.indigoAccent,
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white70,
                                        child: const LoveButton(),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
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
                                      SizedBox(
                                        height: 8.0,
                                        width: 10.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          const Icon(
                                              Icons.star_border_outlined),
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
                                  const SizedBox(height: 8.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      drink.description,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          drink.price,
                                          style: const TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                const EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 25)),
                                          ),
                                          child: const Text(
                                            "Pesan",
                                            style: const TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          onPressed: () {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Anda memesan ${drink.name}',
                                                ),
                                                duration: Duration(seconds: 1),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
