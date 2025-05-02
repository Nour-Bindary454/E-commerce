import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
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
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.phone_android,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                'Phone',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('+91 9876543210'),
            ),
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('hello@example.com'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Subject',
                style: TextStyle(
                    color: Color.fromARGB(255, 112, 110, 110), fontSize: 17),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(5, 5))]),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your subject here...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, bottom: 15, top: 15),
              child: Text(
                'Your Message',
                style: TextStyle(
                    color: Color.fromARGB(255, 112, 110, 110), fontSize: 17),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(5, 5))]),
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter your message here...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
          ],
        ),
      ),
    );
  }
}
