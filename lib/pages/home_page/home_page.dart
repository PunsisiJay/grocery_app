import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/widgets/search_bar.dart';
import 'package:grocery_app/widgets/appBarWidgets/appBarWidget.dart';
import 'package:grocery_app/widgets/reusable/item_card.dart';
import 'package:grocery_app/widgets/reusable/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarActions],
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar_Custom(),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Explore Categories",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ProductCard(
                    ctext: "Vegetable",
                    description:
                        "Vegetables are part of the plants and there are consumed by human",
                    mainBoxColor: Color.fromARGB(255, 117, 14, 196),
                    samllBoxColor: Colors.greenAccent,
                    text_color: Colors.white,
                  ),
                  ProductCard(
                    ctext: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food and by that definition...",
                    mainBoxColor: Color.fromARGB(255, 117, 14, 196),
                    samllBoxColor: Colors.greenAccent,
                    text_color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ProductCard(
                    ctext: "Vegetable",
                    description:
                        "Vegetables are part of the plants and there are consumed by human",
                    mainBoxColor: Color.fromARGB(255, 243, 219, 64),
                    samllBoxColor: Colors.orange,
                    text_color: Colors.black,
                  ),
                  ProductCard(
                    ctext: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food and by that definition...",
                    mainBoxColor: Color.fromARGB(255, 243, 219, 64),
                    samllBoxColor: Colors.orange,
                    text_color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "For Sale and Low Cost",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCard(
                      itemTitle: "Washing Liquid", 
                      itemQty: 200.00, 
                      unit: "ml",
                      itemRupees: 230.00
                      ),
                    ItemCard(
                      itemTitle: "Coffee and Tea", 
                      itemQty: 150.00, 
                      unit: "g",
                      itemRupees: 180.00)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
