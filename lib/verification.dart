import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class verification extends StatelessWidget {
  const verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wallpaper.jpg'),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 30),
            alignment: Alignment.topLeft,
            child: Text(
              'Verification',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: Text('Please enter the OTP code sent to you by SMS'),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 66, 52, 52), blurRadius: 25)
                ]),
                margin: EdgeInsets.only(top: 30, left: 125, bottom: 10),
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: TextField(
                      maxLength: 1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 15, left: 15),
                          hintText: '_',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ))),
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 66, 52, 52), blurRadius: 25)
                ]),
                margin:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: TextField(
                    maxLength: 1,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 15, left: 15),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '_',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, right: 30, bottom: 10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 66, 52, 52), blurRadius: 25)
                ]),
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: TextField(
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        right: 15,
                        left: 15,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '_',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 66, 52, 52), blurRadius: 25)
                ]),
                child: SizedBox(
                  width: 40,
                  height: 60,
                  child: TextField(
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 15, left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '_',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Didn\'t get a code?'),
              TextButton(onPressed: () {}, child: Text('Send Again'))
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 400),
              child: SizedBox(
                width: 480,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(color: Colors.white),
                  ),
                 style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 216, 117, 177),
                      fixedSize: Size(470, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ))
        ],
      ),
    ));
  }
}
