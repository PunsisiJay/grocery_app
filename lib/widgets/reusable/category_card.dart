import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final Color containeColor;
  final Color borderColor;
  final Color circleColor;
  final String categoryTitle;
  final String count;

  const CategoryCard({
    super.key,
    required this.containeColor,
    required this.borderColor,
    required this.circleColor,
    required this.categoryTitle,
    required this.count
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: containeColor,
          border: Border.all(
            color: borderColor,
            width: 3,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryTitle,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                Text(count),
                Icon(
                  Icons.circle,
                  size: 40,
                  color: circleColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
