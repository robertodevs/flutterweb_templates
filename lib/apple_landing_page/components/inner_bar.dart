import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class InnerBanner extends StatelessWidget {
  const InnerBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: appleWhiteText,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Center(
              child: _buildRichTextTitle(
                  context,
                  'Pay for your new Apple products over time, interest-free with Apple Card.◊ Just choose Apple Card Monthly Installments when you check out.',
                  '\nLearn more'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRichTextTitle(context, String sentence, String action) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: sentence,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: appleBlackText,
              fontFamily: '.SF Pro Display',
            ),
        children: <TextSpan>[
          TextSpan(
            text: action,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: appleBlueText,
                  fontFamily: '.SF Pro Display',
                ),
          ),
        ],
      ),
    );
  }
}
