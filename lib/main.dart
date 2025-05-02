import 'package:ecommerce_app/cartScreen.dart';
import 'package:ecommerce_app/checkoutScreen.dart';
import 'package:ecommerce_app/contactUs.dart';
import 'package:ecommerce_app/editProfile.dart';
import 'package:ecommerce_app/favScreen.dart';
import 'package:ecommerce_app/homeScreen.dart';
import 'package:ecommerce_app/language.dart';
import 'package:ecommerce_app/mainLayOut.dart';
import 'package:ecommerce_app/myCards.dart';
import 'package:ecommerce_app/myOrders.dart';
import 'package:ecommerce_app/notifications.dart';
import 'package:ecommerce_app/productDetails.dart';
import 'package:ecommerce_app/profileScreen.dart';
import 'package:ecommerce_app/searchScreen.dart';
import 'package:ecommerce_app/settings.dart';
import 'package:ecommerce_app/shippingAddress.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/signup.dart';
import 'package:ecommerce_app/verification.dart';
import 'package:ecommerce_app/signin.dart';
import 'package:ecommerce_app/payment.dart';
import 'package:ecommerce_app/splashScreen.dart';
import 'package:ecommerce_app/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'splash': (context) => splashscreen(),
        'signin': (context) => signin(),
        'signup': (context) => Signup(),
        'home': (context) => Homescreen(),
        'profile': (context) => profile(),
        'cart': (context) => cartScreen(),
        'checkout': (context) => checkout(),
        'fav': (context) => fav(),
        'payment': (context) => Payment(),
        'category': (context) => category(),
        'search': (context) => search(),
        'verification': (context) => verification(),
        'mainLayOut': (context) => mainLayOut(),
        'language': (context) => Language(),
        'shipping': (context) => ShippingAddress(),
        'contact': (context) => Contactus(),
        'cards': (context) => cards(),
        'edit': (context) => edit(),
        'settings': (context) => Settings(),
        'myorders': (context) => myorders(),
        'notification': (context) => Notifications(),
      },
      initialRoute: 'splash',
      // home: category(),
      // search(),
      // mainLayOut(),
      // fav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//Homescreen
//checkout
//category
//cartScreen
//productDetails
// profile
//splashscreen 
//signin
//Signup
//laoding effect
//move widget 
