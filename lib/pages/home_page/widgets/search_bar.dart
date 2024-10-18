import 'package:flutter/material.dart';

class SearchBar_Custom extends StatelessWidget {
  const SearchBar_Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.black26,
                width: 1,
              ),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black26,
                  ),
                ),
                Expanded(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Search here...",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black12),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 9.0),
                    ),
                  ),
                )
              ],
            ),
            
          ),
        );
  }
}