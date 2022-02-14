import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/help_card.dart';

class HelpGrid extends StatefulWidget {
  const HelpGrid({Key? key}) : super(key: key);

  @override
  _HelpGridState createState() => _HelpGridState();
}

class _HelpGridState extends State<HelpGrid> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          flex: 7,
          child: Row(
            children: [
              HelpCard(
                image: 'assets/apple_landing_page/help1.png',
                title:
                    'Shop one on one with a \nSpecialist. Online or in store.',
                tall: true,
              ),
              SizedBox(height: 25),
              Column(
                children: const [
                  HelpCard(
                    image: 'assets/apple_landing_page/help2.png',
                    title:
                        'Get to know your new device \nwith a free Personal Session.',
                  ),
                  SizedBox(height: 20),
                  HelpCard(
                    image: 'assets/apple_landing_page/help3.png',
                    title:
                        'Get expert service \nand support at the \nGenius Bar.',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
