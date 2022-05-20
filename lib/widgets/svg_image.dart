import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String assetName;
  final Color color;
  final double height;
  final double width;

  const SvgImage(
      {Key? key,
      required this.assetName,
      this.color = const Color(0xFF000000),
      this.height = 20,
      this.width = 20})
      : assert(assetName != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetName,
        color: color,
        semanticsLabel: 'Category',
        height: height,
        width: width,
        fit: BoxFit.scaleDown);
  }
}
