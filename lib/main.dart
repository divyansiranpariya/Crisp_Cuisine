import 'package:ecommerce_app/screen/cart_page.dart';
import 'package:ecommerce_app/screen/checkout.dart';
import 'package:ecommerce_app/screen/favorite_page.dart';
import 'package:ecommerce_app/screen/home_page.dart';
import 'package:ecommerce_app/screen/loginpage.dart';
import 'package:ecommerce_app/screen/salad_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPage',
      routes: {
        'LoginPage': (context) => const LoginPage(),
        'HomePage': (context) => const Homepage(),
        'DetailPage': (context) => const DetailPage(),
        ' CartPage': (context) => const CartPage(),
        'FavoritePage': (context) => const FavoritePage(),
        'CheckoutPage': (context) => const CheckoutPage(),
      },
    ),
  );
}
