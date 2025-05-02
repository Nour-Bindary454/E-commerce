import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myorders extends StatefulWidget {
  const myorders({super.key});

  @override
  State<myorders> createState() => _myordersState();
}

class _myordersState extends State<myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wallpaper.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'My Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Stack(alignment: Alignment.bottomRight, children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        height: 170,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 10, offset: Offset(8, 5))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order #',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  '2609145142',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129)),
                                ),
                                Text(
                                  '20/10/2022',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129),
                                      fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Price',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129)),
                                ),
                                Text(
                                  '\$158.0',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129),
                                      fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129)),
                                ),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 130, 129, 129),
                                      fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  )),
                            )
                          ],
                        ),
                      )
                    ]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
