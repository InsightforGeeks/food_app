import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Handle search icon button press
            },
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle filter icon button press
            },
            icon: const Icon(
              Icons.filter_list,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
