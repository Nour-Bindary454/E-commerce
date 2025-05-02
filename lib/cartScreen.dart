import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  List<String> cart = [
    'assets/images/green.jpg',
    'assets/images/green2.jpg',
    'assets/images/green3.jpg',
    'assets/images/pink3.jpg',
    'assets/images/blue2.jpg',
    'assets/images/purple.jpg'
  ];
  List<String> productNames = [
    'Shampoo',
    'Styling cream',
    'Hair Oil',
    'primer',
    'moisturizer',
    'Sun screen'
  ];
  List<int> counts = [1, 1, 1, 1, 1, 1];

  List<double> productPrices = [25.00, 20.00, 15.00, 10.00, 15.00, 20.00];
  double calcTotal() {
    double Total = 0;
    for (int i = 0; i < productPrices.length; i++) {
      Total = (productPrices[i] * counts[i]) + Total;
    }
    return Total;
  }

  int count = 1;

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
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Navigator.pushReplacementNamed(context, 'mainLayOut');
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Your Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text('           ')
                  ]),
            ),
            Text('${cart.length} Products'),
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    height: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  cart[index],
                                ),
                              ),
                            ),
                            width: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                productNames[index],
                                style: TextStyle(fontSize: 17),
                              ),
                              Text('\$${productPrices[index]}.00',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black)),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        counts[index]++;
                                      });
                                    },
                                    child: Text(
                                      '+',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                Text('${counts[index]}'),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      counts[index]--;
                                    });
                                  },
                                  child: Text('-'),
                                )
                              ],
                            ),
                          ),
                        ]),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 124, 122, 122)),
                    ),
                    // Divider(
                    //   color: const Color.fromARGB(255, 43, 39, 39),
                    //   endIndent: 50,
                    //   indent: 10,
                    //   thickness: 3,
                    // ),
                    Text(
                      'Total',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 124, 122, 122)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$100.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${calcTotal()}.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'checkout');
                    },
                    child: Text(
                      'Check Out',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
