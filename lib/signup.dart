import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/wallpaper.jpg'),
          fit: BoxFit.fill,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 40),
              alignment: Alignment.topLeft,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text('Please enter your information below to sign up')),
            Image.asset(
              'assets/images/logo.png',
              width: 250,
              height: 190,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Name'),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 66, 52, 52),
                    blurRadius: 50,
                  )
                ],
              ),
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter your name',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Email'),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 66, 52, 52),
                    blurRadius: 50,
                  )
                ],
              ),
              margin: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter your email',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Password'),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 66, 52, 52),
                    blurRadius: 50,
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 15, bottom: 30, right: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Please enter your Password',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(
              width: 480,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size(470, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'mainLayOut');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'signin');
                      },
                      child: Text('Sign in'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
