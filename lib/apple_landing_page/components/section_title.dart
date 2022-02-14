import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({Key? key, required this.prefix, required this.sentence})
      : super(key: key);

  final String prefix;
  final String sentence;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: SizedBox()),
        Expanded(
          flex: 7,
          child: RichText(
            text: TextSpan(
              text: prefix,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: appleBlackText,
                  fontFamily: '.SF Pro Display',
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: sentence,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: appleGreyText,
                      fontFamily: '.SF Pro Display',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
