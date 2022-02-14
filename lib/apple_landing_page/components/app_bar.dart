import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuStyle = Theme.of(context)
        .textTheme
        .caption!
        .copyWith(color: appleWhiteText.withOpacity(0.7));
    return SafeArea(
      child: Container(
        color: const Color(0xFF313132),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/apple_landing_page/apple.png'),
              SizedBox(
                width: 24,
              ),
              Text(
                'Store',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Mac',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'iPad',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'iPhone',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Watch',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'AirPods',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'TV & Home',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Only on Apple',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Accesories',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Support',
                style: menuStyle,
              ),
              SizedBox(
                width: 24,
              ),
              IconButton(
                onPressed: null,
                iconSize: 16,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                iconSize: 40,
                icon: Image.asset('assets/apple_landing_page/cart.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
