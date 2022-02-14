import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({
    Key? key,
    required this.image,
    required this.miniTitle,
    required this.mainTitle,
    required this.subTitle,
    this.dark = false,
  }) : super(key: key);

  final String image;
  final String miniTitle;
  final String mainTitle;
  final String subTitle;
  final bool dark;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
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
            width: 400,
            height: 500,
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
                  padding: const EdgeInsets.only(left: 24.0, top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.miniTitle,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: appleGreyText),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        widget.mainTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(
                                color: widget.dark
                                    ? appleWhiteText
                                    : appleBlackText)
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        widget.subTitle,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color:
                                widget.dark ? appleWhiteText : appleBlackText),
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
