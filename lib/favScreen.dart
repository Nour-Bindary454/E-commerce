import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/pink3.jpg',
      'assets/images/purple.jpg',
      'assets/images/blue2.jpg',
      'assets/images/green.jpg',
      'assets/images/green2.jpg',
    ];
    List<String> discription = [
      'Primer',
      'Sun Screen',
      'Moissurizer',
      'Cleanser',
      'Conditioner',
    ];
    List<String> price = [
      '\$25.00',
      '\$55.00',
      '\$15.00',
      '\$25.00',
      '\$25.00',
    ];
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Wish List',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 194, 193, 193),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(7, 9),
                    ),
                  ]),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search Product',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.89,
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              height: 70,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                            ),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: Alignment.centerLeft,
                                              image: AssetImage(
                                                images[index],
                                              ),
                                            ),
                                          ),
                                          width: 100,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              discription[index],
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Text('${price[index]}',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                CupertinoIcons.cart_badge_plus))
                                      ],
                                    ),
                                  ])),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
