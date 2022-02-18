import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/color_option.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

enum ColorDevice {
  orange,
  green,
  pink,
  navy,
  pinkDark,
  space,
  blue,
  red,
  undefined,
}

class ColorSelector extends StatelessWidget {
  final ColorDevice currentColorDevice;
  final void Function(ColorDevice) updateCurrentColorDevice;

  const ColorSelector({
    Key? key,
    required this.currentColorDevice,
    required this.updateCurrentColorDevice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 6,
      shrinkWrap: true,
      crossAxisSpacing: 8,
      mainAxisSpacing: 16,
      children: [
        ColorOption(
          colorOption: appleOrange,
          colorDevice: ColorDevice.orange,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleGreen,
          colorDevice: ColorDevice.green,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: applePink,
          colorDevice: ColorDevice.pink,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleNavy,
          colorDevice: ColorDevice.navy,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleOrangeDark,
          colorDevice: ColorDevice.pinkDark,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleBlackStrong,
          colorDevice: ColorDevice.space,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleSkyBlue,
          colorDevice: ColorDevice.blue,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
        ColorOption(
          colorOption: appleRedSpecial,
          colorDevice: ColorDevice.red,
          currentColorDevice: currentColorDevice,
          updateCurrentColorDevice: updateCurrentColorDevice,
        ),
      ],
    );
  }
}
