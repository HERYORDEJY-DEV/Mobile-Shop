import 'package:flutter/material.dart';
import 'package:mobile_shop/styles/colors.dart';
import 'package:mobile_shop/widgets/svg_image.dart';

class ButtonIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onPress;
  final Color color;
  final Color backgroundColor;

  const ButtonIcon(
      {Key? key,
      required this.onPress,
      required this.icon,
      this.color = AppColors.white,
      this.backgroundColor = AppColors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)))),
        child: SvgImage(
          assetName: icon,
          height: 24,
          width: 24,
          color: color,
        ),
        onPressed: onPress,
      ),
    );
  }
}
