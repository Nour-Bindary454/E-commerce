// import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wallpaper.jpg'),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Column(children: [
          Expanded(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                            'assets/images/bbae429bfc10e144dc3bfe7cd60756fa.jpg'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Nour Bendary',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 30, bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {},
                        iconColor: Colors.black,
                        title: Text('My Account'),
                        leading: Icon(CupertinoIcons.profile_circled),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, 'myorders');
                        },
                        iconColor: Colors.black,
                        title: Text('My Orders'),
                        leading: Icon(CupertinoIcons.bag),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, 'language');
                        },
                        iconColor: Colors.black,
                        title: Text('Language Settings'),
                        leading: Icon(CupertinoIcons.t_bubble),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, 'shipping');
                        },
                        iconColor: Colors.black,
                        title: Text('Shipping Address'),
                        leading: Icon(CupertinoIcons.location_solid),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        selectedTileColor: Colors.pink,
                        onTap: () {
                          Navigator.pushNamed(context, 'cards');
                        },
                        iconColor: Colors.black,
                        title: Text('My Cards'),
                        leading: Icon(CupertinoIcons.creditcard),
                        // focusColor: Colors.pink,
                        //selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, 'settings');
                        },
                        iconColor: Colors.black,
                        title: Text('Settings'),
                        leading: Icon(CupertinoIcons.gear_alt),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {},
                        iconColor: Colors.black,
                        title: Text('Privacy Policy'),
                        leading: Icon(CupertinoIcons.doc_text_fill),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        onTap: () {},
                        iconColor: Colors.black,
                        title: Text('FAQ'),
                        leading: Icon(CupertinoIcons.info_circle),
                        focusColor: Colors.pink,
                        selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
                        selectedTileColor: Colors.pink,
                        onTap: () {
                          Navigator.pushNamed(context, 'contact');
                        },
                        iconColor: Colors.black,
                        title: Text('Contact Us'),
                        leading: Icon(CupertinoIcons.phone_fill),
                        // focusColor: Colors.pink,
                        //selectedColor: Colors.pink,
                        trailing: Icon(CupertinoIcons.chevron_right),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
