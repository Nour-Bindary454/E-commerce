import 'package:ecommerce_app/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map> featuredproducts = [
    {
      'image': 'assets/images/green.jpg',
      'name': 'Shampoo',
      'price': '\$ 30.00',
      'description': 'Shampoo',
    },
    {
      'image': 'assets/images/green2.jpg',
      'name': 'Hair Conditioner',
      'price': '\$ 15.00',
      'description': 'Hair Conditioner',
    },
    {
      'image': 'assets/images/green3.jpg',
      'name': 'Hair Serum',
      'price': '\$ 20.00',
      'description': 'Hair Serum',
    },
  ];
  List<Map> bestproducts = [
    {
      'image': 'assets/images/blue2.jpg',
      'name': 'Cleanser',
      'price': '\$ 40.00',
      'description': 'Cleanser',
    },
    {
      'image': 'assets/images/pink3.jpg',
      'name': 'Primer',
      'price': '\$ 100.00',
      'description': 'Primer',
    },
    {
      'image': 'assets/images/purple.jpg',
      'name': 'Sunscreen',
      'price': '\$ 70.00',
      'description': 'Sunscreen',
    }
  ];
  List<String> categoriesCover = [
    'assets/images/skinCare.jpg',
    'assets/images/hairCare.jpg',
    'assets/images/makeUp.jpg',
    'assets/images/clothes.jpg',
    'assets/images/cusomizedClothes.jpg',
    'assets/images/accessorise.jpg'
  ];
  List<String> label = [
    'Skin Care',
    'Hair Care',
    'Make Up',
    'Clothes',
    'customized Clothes',
    'Accessories'
  ];
  List<String> FeturedProduct = [
    'assets/images/green.jpg',
    'assets/images/green2.jpg',
    'assets/images/green3.jpg',
  ];

  List<String> FeturedLabel = [
    'Shampoo',
    'Hair Conditioner',
    'Hair Serum',
  ];
  List<String> bestSelling = [
    'assets/images/blue2.jpg',
    'assets/images/pink3.jpg',
    'assets/images/purple.jpg',
  ];
  List<String> bestSellingLabel = [
    'Cleanser',
    'Primer',
    'Sunscreen',
  ];
  int selectedIndex = 0;
  void onTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<bool> like = [false, false, false];
  List<bool> BestSellinglike = [false, false, false];

  bool click = false;

  List<String> FeturedPrice = ['\$ 30.00', '\$ 15.00', '\$ 20.00'];
  List<String> bestSellingPrice = ['\$ 40.00', '\$ 100.00', '\$ 70.00'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                )
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Search Products',
                                hintStyle: TextStyle(color: Colors.black),
                                prefixIcon: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, 'cart');
                              },
                              padding: EdgeInsets.all(11),
                              style: ButtonStyle(),
                              icon: Icon(
                                CupertinoIcons.cart_fill,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'notification');
                              },
                              padding: EdgeInsets.all(11),
                              style: ButtonStyle(),
                              icon: Icon(
                                CupertinoIcons.bell_fill,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 30, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Special for you',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'mainlayout');
                              },
                              child: Text(
                                'See more',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 104, 103, 103)),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesCover.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 270,
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      categoriesCover[index],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Text(
                                  label[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured Products',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 104, 103, 103)),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: FeturedProduct.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => productDetails(
                                      image: featuredproducts[index]['image'],
                                      discription: featuredproducts[index]
                                          ['description'],
                                      price: featuredproducts[index]['price'],
                                      name: featuredproducts[index]['name'],
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.all(10),
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          FeturedProduct[index],
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        like[index] = !like[index];
                                        setState(() {});
                                      },
                                      icon: Icon(
                                        CupertinoIcons.heart_fill,
                                        color: like[index]
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    FeturedLabel[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    FeturedPrice[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best selling Products',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 104, 103, 103)),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: bestSelling.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => productDetails(
                                      image: bestproducts[index]['image'],
                                      discription: bestproducts[index]
                                          ['description'],
                                      price: bestproducts[index]['price'],
                                      name: bestproducts[index]['name'],
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.all(10),
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          bestSelling[index],
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        BestSellinglike[index] =
                                            !BestSellinglike[index];
                                        setState(() {});
                                      },
                                      icon: Icon(
                                        CupertinoIcons.heart_fill,
                                        color: BestSellinglike[index]
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    bestSellingLabel[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    bestSellingPrice[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            // BottomNavigationBar(
            //     selectedItemColor: Colors.black,
            //     unselectedItemColor: Color.fromARGB(255, 114, 113, 113),
            //     showSelectedLabels: true,
            //     selectedIconTheme:
            //         CupertinoIconThemeData(color: Colors.black, fill: 1),
            //     iconSize: 25,
            //     currentIndex: selectedIndex,
            //     onTap: onTaped,
            //     items: const <BottomNavigationBarItem>[
            //       BottomNavigationBarItem(
            //         icon: Icon(
            //           CupertinoIcons.home,
            //         ),
            //         label: 'Home',
            //       ),
            //       BottomNavigationBarItem(
            //           icon: Icon(
            //             CupertinoIcons.square_grid_2x2,
            //           ),
            //           label: 'Categories'),
            //       BottomNavigationBarItem(
            //         icon: Icon(
            //           CupertinoIcons.search,
            //         ),
            //         label: 'Search',
            //       ),
            //       BottomNavigationBarItem(
            //         icon: Icon(
            //           CupertinoIcons.heart,
            //         ),
            //         label: 'Favorite',
            //       ),
            //       BottomNavigationBarItem(
            //         icon: Icon(
            //           CupertinoIcons.profile_circled,
            //         ),
            //         label: 'Profile',
            //       ),
            //     ])
          ],
        ),
      ),
    );
  }
}
