import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/reusable/category_card.dart';
import 'package:grocery_app/widgets/reusable/category_rule.dart';

class CategoryPage extends StatelessWidget {
  final String discountTitle;
  final String discountDes;

  const CategoryPage(
      {super.key, required this.discountTitle, required this.discountDes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Categories"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow[200],
                    border: Border.all(color: Colors.amberAccent, width: 2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      discountTitle,
                      style: TextStyle(fontSize: 15, color: Colors.amber[700]),
                    ),
                    Text(
                      discountDes,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Title(
                  color: Colors.black,
                  child: const Text(
                    "All Categories",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  )),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                          containeColor: Colors.blue.shade100,
                          borderColor: Colors.blue.shade900,
                          circleColor: Colors.blue.shade600,
                          categoryTitle: "Vegetable & Fruits",
                          count: "20+ more..."),
                       CategoryCard(
                          containeColor: Colors.greenAccent.shade100,
                          borderColor: Colors.greenAccent.shade700,
                          circleColor: Colors.greenAccent.shade400,
                          categoryTitle: "Cooking & Elements",
                          count: "30+ more...") 
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CategoryCard(
                        containeColor: Color.fromARGB(255, 184, 215, 240), 
                        borderColor: Color.fromARGB(255, 87, 172, 242), 
                        circleColor: Color.fromARGB(255, 106, 185, 249), 
                        categoryTitle: "categoryTitle", 
                        count: "count"
                        ),
                       CategoryCard(
                          containeColor: Colors.amber,
                          borderColor: Color.fromARGB(255, 172, 121, 3),
                          circleColor: Color.fromARGB(255, 231, 164, 8),
                          categoryTitle: "Bites and Drinks",
                          count: "10+ more..."),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        containeColor: Colors.red.shade100, 
                        borderColor: Colors.red, 
                        circleColor: Colors.red.shade400, 
                        categoryTitle: "categoryTitle", 
                        count: "30+ more..."
                        ),
                      CategoryCard(
                        containeColor: Colors.purple.shade100, 
                        borderColor: Colors.purple.shade700, 
                        circleColor: Colors.purple.shade300, 
                        categoryTitle: "categoryTitle", 
                        count: "count")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Selected Items", style: TextStyle(fontSize: 25),),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   width: double.infinity,
                   height: 400,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                     color: Colors.grey.shade400.withOpacity(0.5),
                     width: 4,
                     ) 
                  ),
                  child:  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.00),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vegetables", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500), textAlign: TextAlign.left,),
                    
                        CategoryRule(
                          rule: "The vegetables are part of the plant and they are consumed by human", 
                          number: 1,
                        ),
                        CategoryRule(
                          rule: "The Fruits are part of the plant and they are consumed by human", 
                          number: 2,
                        ),
                        CategoryRule(
                          rule: "The vegetables are part of the plant and they are consumed by human", 
                          number: 3,
                        ),
                        CategoryRule(
                          rule: "The vegetables are part of the plant and they are consumed by human", 
                          number: 4,
                        ),
                      ],                   
                    ),
                  ),
                  ),                           
                ],
              )               
            ],
          ),
        ),
      ),
    );
  }
}