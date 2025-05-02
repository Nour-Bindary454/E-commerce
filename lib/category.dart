import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
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

  int selectedIndex = 0;
  void onTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper.jpg'),
              fit: BoxFit.cover)),
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15, spreadRadius: 0.1, offset: Offset(1, 0))
                ],
              ),
              width: 450,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Search Category',
                  prefixIcon: Icon(CupertinoIcons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  children: List.generate(categoriesCover.length, (index) {
                    return Container(
                      
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            categoriesCover[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(
                        label[index],
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
