import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  List<String> cart = [
    'assets/images/green.jpg',
    'assets/images/green2.jpg',
    'assets/images/green3.jpg',
    'assets/images/pink3.jpg',
    'assets/images/blue2.jpg',
    'assets/images/purple.jpg'
  ];
  List<String> paymentMethods = [
    'assets/images/paypal.jpg',
    'assets/images/visa.jpg',
    'assets/images/mastercard.jpg',
    'assets/images/applepay.jpg',
    'assets/images/gpay.jpg',
  ];
  List<String> productNames = [
    'Shampoo',
    'Styling cream',
    'Hair Oil',
    'primer',
    'moisturizer',
    'Sun screen'
  ];

  List<double> productPrices = [25.00, 20.00, 15.00, 10.00, 15.00, 20.00];
  double calcTotal() {
    double Total = 0;
    for (int i = 0; i < productPrices.length; i++) {
      Total = productPrices[i] + Total;
    }
    return Total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wallpaper.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'cart');
                    },
                    icon: Icon(Icons.arrow_back)),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Check Out',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(scrollDirection: Axis.vertical, children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Address',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'shipping');
                          },
                          child: Text(
                            'Change Address',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 133, 131, 131)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(1, 2),
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John Doe, +961-12345678'),
                      Text('Schools Street, Behind the Official School,'),
                      Text('Maghdouche, Saida, Lebanon, 1600')
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Mode',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change Mode',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 133, 131, 131)),
                          ))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(1, 2),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Flat Rate'), Text('\$20.0')],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Cart',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'cart');
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 133, 131, 131)),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.only(left: 15, right: 15),
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  offset: Offset(1, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(cart[index]),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                        itemCount: paymentMethods.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(paymentMethods[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Order Summary',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.5,
                          color: Colors.black,
                          blurRadius: 0,
                        )
                      ]),
                  child: ListView.builder(
                      itemCount: cart.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              bottom: 10, left: 10, right: 10, top: 10),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 244, 242, 242),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(cart[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                width: 100,
                                height: 100,
                              ),
                              Text(
                                productNames[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                '\$${productPrices[index]}.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Coupon',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add Coupon Code >',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 131, 129, 129)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total'),
                    Text(
                      '\$${calcTotal()}.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'payment');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size(150, 50),
                  ),
                  child: Text(
                    'Pay Now',
                    style: TextStyle(color: Colors.white),
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
