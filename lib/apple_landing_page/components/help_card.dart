import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class HelpCard extends StatefulWidget {
  const HelpCard({
    Key? key,
    required this.image,
    required this.title,
    this.tall = false,
  }) : super(key: key);

  final String image;
  final String title;
  final bool tall;

  @override
  State<HelpCard> createState() => _HelpCardState();
}

class _HelpCardState extends State<HelpCard> {
  double scale = 1.0;

  void _changeScale() {
    setState(() => scale = scale == 1.0 ? 1.02 : 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 300),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            width: 500,
            height: widget.tall ? 500 : 240,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                onHover: (hover) {
                  if (hover) {
                    _changeScale();
                  } else {
                    _changeScale();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: appleBlackText)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appleWhiteText.withOpacity(0.3),
                    offset: Offset(0, 10),
                    blurRadius: 50,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
