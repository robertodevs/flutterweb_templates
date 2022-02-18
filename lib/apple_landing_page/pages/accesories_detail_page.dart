import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/app_bar.dart';
import 'package:flutterweb_templates/apple_landing_page/components/apple_button.dart';
import 'package:flutterweb_templates/apple_landing_page/components/color_selector.dart';
import 'package:flutterweb_templates/apple_landing_page/components/inner_bar.dart';
import 'package:flutterweb_templates/apple_landing_page/components/inner_page_title.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class AccesoriesDetailPage extends StatefulWidget {
  const AccesoriesDetailPage({Key? key}) : super(key: key);

  @override
  State<AccesoriesDetailPage> createState() => _AccesoriesDetailPageState();
}

class _AccesoriesDetailPageState extends State<AccesoriesDetailPage> {
  ColorDevice? currentColorDevice = ColorDevice.orange;
  String imageExtension = '.png';
  String currentColorImage = 'orange';
  String currentiPhoneImageVariation = '01';
  final path = 'assets/apple_accesories_page/';

  String get _currentiPhoneImage =>
      path + currentColorImage + currentiPhoneImageVariation + imageExtension;

  double currentDeviceIndicatorPosition = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CustomAppBar(),
          InnerPageTitle(),
          InnerBanner(),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'New',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.red),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'iPhone 13 Silicone Case with MagSafe - Chalk Pink',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: appleBlackText,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text('\$49.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: appleBlackText)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text('or',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: appleBlackText)),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '\$4.08/mo.per month for 12 mo.monthsFootnote*',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: appleBlackText),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Learn how to pay monthly at 0% APR when you choose Apple Card Monthly Installments',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: appleBlueText),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Color - Chalk Pink',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: appleBlackText,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ColorSelector(
                            currentColorDevice:
                                currentColorDevice ?? ColorDevice.undefined,
                            updateCurrentColorDevice: (newColorDevice) =>
                                setState(() {
                              currentColorDevice = newColorDevice;
                              currentColorImage =
                                  newColorDevice.toString().split('.').last;
                            }),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'To purchase with monthly pricing, add this item to your bag and choose to check out with Apple Card Monthly Installments.◊',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: appleBlackText,
                                    fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/apple_accesories_page/package.png'),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'In Stock \nFree Shipping',
                                      children: [
                                        TextSpan(
                                          text: '\nGet delivery dates',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(color: appleBlueText),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/apple_accesories_page/bag.png'),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pickup:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Check availability',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: appleBlueText),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          AppleButton(),
                          const SizedBox(
                            height: 24,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              'Still deciding?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              'Add this item to a list and easily come back to it later.',
                              style: Theme.of(context).textTheme.bodyText1!,
                            ),
                            trailing: Image.asset(
                                'assets/apple_accesories_page/mark.png'),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Divider(),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          child: Image.asset(_currentiPhoneImage),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '01';
                                      currentDeviceIndicatorPosition = 5;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}01.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '02';
                                      currentDeviceIndicatorPosition = 70;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}02.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '03';
                                      currentDeviceIndicatorPosition = 137;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}03.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '04';
                                      currentDeviceIndicatorPosition = 205;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}04.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '05';
                                      currentDeviceIndicatorPosition = 270;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}05.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '06';
                                      currentDeviceIndicatorPosition = 335;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}06.png',
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () => setState(() {
                                      currentiPhoneImageVariation = '07';
                                      currentDeviceIndicatorPosition = 400;
                                    }),
                                    child: Image.asset(
                                      '${path + currentColorImage}07.png',
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedPositioned(
                              bottom: 0,
                              left: currentDeviceIndicatorPosition,
                              child: Container(
                                height: 2,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: appleGreyText.withOpacity(0.3)),
                              ),
                              duration: Duration(milliseconds: 400),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
