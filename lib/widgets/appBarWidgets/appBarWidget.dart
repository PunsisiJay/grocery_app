import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 105, 6, 122)),
    child: const Center(
      child: Icon(
        Icons.location_on_rounded,
        size: 25,
        color: Colors.white,
      ),
    ),
  ),
);

Widget appBarTitle = const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(color: Colors.black54),
    ),
    Text(
      "92 High Street, London",
      style: TextStyle(fontWeight: FontWeight.w500),
    )
  ],
);

Widget appBarActions = Padding(
  padding: const EdgeInsets.only(right: 10.0),
  child: Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: Colors.amber),
    child: const Center(
      child: Icon(
        Icons.camera_alt_outlined,
        color: Colors.white,
        size: 25,
      ),
    ),
  ),
);
