import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class InnerPageTitle extends StatelessWidget {
  const InnerPageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 7,
              child: Text(
                'iPhone Accesories',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: appleBlackText,
                    fontFamily: '.SF Pro Display',
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
