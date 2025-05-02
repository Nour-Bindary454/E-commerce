import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  List<String> cards = [
    'assets/images/visacard.png',
    'assets/images/mastercard.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    'My Cards',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add))
                ],
              ),
            ),
            Text(
              'Your Payment Cards',
              style: TextStyle(color: Color.fromARGB(255, 107, 106, 106)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 220,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(cards[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
