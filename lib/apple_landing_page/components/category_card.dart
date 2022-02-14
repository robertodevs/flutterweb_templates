import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.productTitle, required this.productImage})
      : super(key: key);

  final String productTitle;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        children: [
          Image.asset(
            productImage,
            height: 75,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            productTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
