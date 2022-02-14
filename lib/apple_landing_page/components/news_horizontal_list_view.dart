import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/news_card.dart';

class NewsHorizontalListView extends StatelessWidget {
  const NewsHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
            bottom: 20, left: MediaQuery.of(context).size.width * 0.22),
        children: const [
          NewsCard(
            miniTitle: 'BLACK UNITY BAND',
            mainTitle: 'Future. Forward.',
            subTitle: '\$99',
            image: 'assets/apple_landing_page/card1.png',
            dark: true,
          ),
          NewsCard(
              miniTitle: 'IPHONE 13 PRO',
              mainTitle: 'Oh. So. Pro.',
              subTitle:
                  'From \$999.00 or \$41.62/mo.per month for 24 mo.Footnote*months before trade-in',
              image: 'assets/apple_landing_page/card2.png'),
          NewsCard(
              miniTitle: 'VALENTINE’S DAY GIFTS',
              mainTitle: 'Say it with a gift from Apple.',
              subTitle: '',
              image: 'assets/apple_landing_page/card3.png'),
          NewsCard(
              miniTitle: 'LIMITED-TIME OFFER',
              mainTitle: 'Give more to your heart.',
              subTitle: '',
              image: 'assets/apple_landing_page/card4.png'),
          NewsCard(
              miniTitle: 'Mac',
              mainTitle: '',
              subTitle: '',
              image: 'assets/apple_landing_page/card5.png'),
          NewsCard(
              miniTitle: 'Mac',
              mainTitle: '',
              subTitle: '',
              image: 'assets/apple_landing_page/card6.png'),
          NewsCard(
              miniTitle: 'Mac',
              mainTitle: '',
              subTitle: '',
              image: 'assets/apple_landing_page/card7.png'),
          NewsCard(
              miniTitle: 'Mac',
              mainTitle: '',
              subTitle: '',
              image: 'assets/apple_landing_page/card8.png'),
          NewsCard(
              miniTitle: 'Mac',
              mainTitle: '',
              subTitle: '',
              image: 'assets/apple_landing_page/card9.png'),
        ],
      ),
    );
  }
}
