import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/app_bar.dart';
import 'package:flutterweb_templates/apple_landing_page/components/category_horizontal_list_view.dart';
import 'package:flutterweb_templates/apple_landing_page/components/help_grid.dart';
import 'package:flutterweb_templates/apple_landing_page/components/hero_section.dart';
import 'package:flutterweb_templates/apple_landing_page/components/news_horizontal_list_view.dart';
import 'package:flutterweb_templates/apple_landing_page/components/section_title.dart';
import 'package:flutterweb_templates/apple_landing_page/components/small_banner.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class AppleLandingPage extends StatelessWidget {
  const AppleLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appleScaffoldBackground,
      body: ListView(
        children: const [
          CustomAppBar(),
          SmallBanner(),
          SizedBox(
            height: 75,
          ),
          HeroSection(),
          SizedBox(
            height: 75,
          ),
          CategoryHorizontalListView(),
          SizedBox(
            height: 20,
          ),
          SectionTile(
            prefix: 'The latest.',
            sentence: 'Take a look at what’s new, right now.',
          ),
          SizedBox(
            height: 25,
          ),
          NewsHorizontalListView(),
          SizedBox(
            height: 50,
          ),
          SectionTile(
              prefix: 'Help is here.',
              sentence: 'Whenever and however you need it.'),
          SizedBox(
            height: 25,
          ),
          HelpGrid(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
