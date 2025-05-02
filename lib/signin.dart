import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ischecked = false;
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
              margin: EdgeInsets.only(left: 20, top: 40),
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text('Login to your existing account'),
            ),
            Image.asset('assets/images/logo.png', width: 250, height: 190),
            // Image(
            //   image: AssetImage('assets/images/logo.png'),
            //   width: 250,
            //   height: 190,
            // ),
            Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('Email Address')),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 66, 52, 52),
                    blurRadius: 50,
                  )
                ]),
                margin: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    counterStyle: TextStyle(color: Colors.black),
                    hintText: 'e.g name@example.com',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text('Password')),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 66, 52, 52),
                    blurRadius: 50,
                  )
                ]),
                margin: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    counterStyle: TextStyle(color: Colors.black),
                    hintText: 'e.g *************',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Checkbox(
                      value: ischecked,
                      onChanged: (bool? checked) {
                        setState(() {
                          ischecked = checked ?? false;
                        });
                      },
                    ),
                  ),
                  Text('Remember me'),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ]),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 480,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'mainLayOut');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(470, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child:
                        Text('Login', style: TextStyle(color: Colors.white))),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Image.asset(
                      'assets/images/google-removebg-preview.png',
                      width: 90,
                      height: 90,
                    ),
                    onTap: () {},
                  )),
              InkWell(
                child: Image.asset(
                  'assets/images/facebook-removebg-preview.png',
                  width: 50,
                  height: 50,
                ),
                onTap: () {},
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? '),
                TextButton(
                    onPressed: () {
                      // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      //   builder: (context) => Signup(),
                      // ));
                      Navigator.pushReplacementNamed(context, 'signup');
                    },
                    child: Text('Sign Up'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
