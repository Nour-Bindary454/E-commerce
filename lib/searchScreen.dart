import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List<String> images = [
    'assets/images/pink3.jpg',
    'assets/images/purple.jpg',
    'assets/images/blue2.jpg',
  ];
  List<String> discription = [
    'Primer',
    'Sun Screen',
    'Moissurizer',
  ];
  List<String> price = [
    '\$25.00',
    '\$55.00',
    '\$15.00',
  ];

  @override
  Widget build(BuildContext context) {
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
              'Search',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 194, 193, 193),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(7, 9), // changes position of shadow
                          ),
                        ]),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 70,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search Here...',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 194, 193, 193),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(7, 15),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                            CupertinoIcons.square_fill_line_vertical_square)),
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
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
