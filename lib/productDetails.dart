import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productDetails extends StatefulWidget {
  productDetails(
      {super.key,
      required this.image,
      required this.price,
      required this.discription,
      required this.name});

  @override
  State<productDetails> createState() => _productDetailsState();
  String name;
  String image;
  String price;
  String discription;
}

class _productDetailsState extends State<productDetails> {
  List<String> productDetails = [
    'assets/images/green3.jpg',
    'assets/images/green.jpg',
    'assets/images/blue2.jpg',
    'assets/images/pink3.jpg'
  ];
  List<String> productSize = ['50ml', '60ml', '70ml', '100ml'];
  bool like = false;
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'mainLayOut');
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 45),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.price.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 20),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          like = !like;
                                          setState(() {});
                                        },
                                        icon: Icon(
                                          CupertinoIcons.heart_fill,
                                          color:
                                              like ? Colors.red : Colors.grey,
                                        ))
                                  ],
                                ),
                                Text(
                                  widget.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  widget.discription,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet, consectetur efficitur. Sed in auctor turpis. Sed auctor, purus et aliquet ultrices, turpis semper ipsum, at interdum Lorem ipsum dolor sit amet, consectetur .'),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Color',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5),
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5),
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Size',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  child: ListView.builder(
                                      itemCount: productSize.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                              right: 5,
                                            ),
                                            width: 40,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              116,
                                                              116,
                                                              116))
                                                ],
                                                color: Colors.white60,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              productSize[index],
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ]),
                        );
                      }),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black,
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.9, 45)),
                      onPressed: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
