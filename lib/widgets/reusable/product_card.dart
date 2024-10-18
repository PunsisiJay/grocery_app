import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String ctext;
  final String description;
  final Color mainBoxColor;
  final Color samllBoxColor;
  final Color text_color;

  const ProductCard({
    super.key,
    required this.ctext,
    required this.description,
    required this.mainBoxColor,
    required this.samllBoxColor,
    required this.text_color,
  });

  final double pcard_width = 175;
  final double pcard_height = 250;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: pcard_width,
        height: pcard_height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainBoxColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(
                color: text_color,
                child: Text(
                  ctext,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: text_color),
                ),
              ),
              Text(
                description,
                style:
                    TextStyle(fontWeight: FontWeight.normal, color: text_color, fontSize: 15.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: samllBoxColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
