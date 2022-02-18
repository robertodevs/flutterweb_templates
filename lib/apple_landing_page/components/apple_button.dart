import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class AppleButton extends StatefulWidget {
  const AppleButton({Key? key}) : super(key: key);

  @override
  _AppleButtonState createState() => _AppleButtonState();
}

class _AppleButtonState extends State<AppleButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return 0;
              return null;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) return null;
            return appleBlueText; // Defer to the widget's default.
          }),
        ),
        onPressed: () {},
        child: Text(
          'Add to Bag',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: appleWhiteText),
        ),
      ),
    );
  }
}
