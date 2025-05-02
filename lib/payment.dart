import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
            children: [
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: Text(
                        'Payment',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 190),
                child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/images/ver.png')),
              ),
              Text('Payment Successful!'),
              Text(
                  'Your order will be processed and sent to you as soon as possible!'),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'mainLayOut');
                  },
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 216, 117, 177),
                      fixedSize: Size(470, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          )),
    );
  }
}
