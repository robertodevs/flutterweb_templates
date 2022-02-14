import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class SmallBanner extends StatefulWidget {
  const SmallBanner({Key? key}) : super(key: key);

  @override
  State<SmallBanner> createState() => _SmallBannerState();
}

class _SmallBannerState extends State<SmallBanner> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => pageController.previousPage(
              duration: Duration(milliseconds: 1000),
              curve: Curves.ease,
            ),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: PageView(
              controller: pageController,
              children: [
                Center(
                  child: _buildRichTextTitle(
                      context,
                      'Get up to \$235 with extra trade-in savings on Apple Watch Series 7 when you upgrade during Heart Month.',
                      ' Shop'),
                ),
                Center(
                  child: _buildRichTextTitle(
                      context,
                      'Save on your new iPhone with special carrier deals at Apple.',
                      ' Find your deal'),
                ),
                Center(
                  child: _buildRichTextTitle(
                      context,
                      'Shop online and get Specialist help, free delivery and more. Some of our stores are offering limited services. \nBefore you visit, please ',
                      'check your store’s services.'),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => pageController.nextPage(
              duration: Duration(milliseconds: 1000),
              curve: Curves.ease,
            ),
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRichTextTitle(context, String sentence, String action) {
    return RichText(
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
