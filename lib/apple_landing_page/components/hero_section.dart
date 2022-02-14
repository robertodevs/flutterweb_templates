import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: SizedBox()),
        Expanded(
          flex: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 650),
                child: RichText(
                  text: TextSpan(
                    text: 'Store.',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: appleBlackText,
                        fontFamily: '.SF Pro Display',
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'The best way to buy the products you love.',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: appleGreyText,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child:
                            Image.asset('assets/apple_landing_page/agent.png'),
                      ),
                      title: Text(
                        'Need shopping help?',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Ask a Specialist',
                        style: TextStyle(color: appleBlueText),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ListTile(
                        leading: Icon(
                          Icons.chat_bubble_outline,
                          color: appleBlackText,
                        ),
                        title: Text('Visit an Apple Store',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          'Find one near you',
                          style: TextStyle(color: appleBlueText),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
