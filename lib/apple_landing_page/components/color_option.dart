import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/components/color_selector.dart';
import 'package:flutterweb_templates/apple_landing_page/style/apple_colors.dart';

class ColorOption extends StatelessWidget {
  final Color colorOption;
  final ColorDevice colorDevice;
  final ColorDevice currentColorDevice;

  final void Function(ColorDevice) updateCurrentColorDevice;

  const ColorOption({
    Key? key,
    required this.colorOption,
    required this.colorDevice,
    required this.currentColorDevice,
    required this.updateCurrentColorDevice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => updateCurrentColorDevice(colorDevice),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: colorDevice == currentColorDevice
              ? Border.all(color: appleBlueText, width: 2)
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: Text(''),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorOption,
            ),
          ),
        ),
      ),
    );
  }
}
