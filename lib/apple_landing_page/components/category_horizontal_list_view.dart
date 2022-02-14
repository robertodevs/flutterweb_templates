import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/category_card.dart';

class CategoryHorizontalListView extends StatelessWidget {
  const CategoryHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.22),
        children: const [
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/mac.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/iphone.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/ipad.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/applewatch.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/airpods.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/airtag.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/appletv.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/homemini.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/accesories.png'),
          CategoryCard(
              productTitle: 'Mac',
              productImage: 'assets/apple_landing_page/giftcard.png'),
        ],
      ),
    );
  }
}
