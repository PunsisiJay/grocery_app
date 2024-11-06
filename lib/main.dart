import 'package:flutter/material.dart';
import 'package:grocery_app/pages/about_page/widgets/category_page.dart';
import 'package:grocery_app/pages/home_page/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CategoryPage(
        discountTitle: "Get 100% off on Groseries Plus & TC Apply", 
        discountDes: "Speed payment with master and visa card") 
    );
  }
}