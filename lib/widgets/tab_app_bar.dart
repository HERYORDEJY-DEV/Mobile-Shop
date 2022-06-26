import 'package:flutter/material.dart';
import 'package:mobile_shop/widgets/svg_image.dart';

const TextStyle titleStyle = TextStyle(
    color: Color(0xFF141010), fontWeight: FontWeight.w600, fontSize: 17.0);

class CustomTabAppBar extends AppBar {
  CustomTabAppBar(
      {Key? key,
      required title,
      showCart = false,
      onCartPressed,
      onNotifPressed})
      : super(
            leading: SvgImage(
              assetName: "assets/svg/Category.svg",
            ),
            title: Center(
              child: Text(
                title,
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
            ),
            actions: <Widget>[
              if (showCart)
                IconButton(
                  icon: const SvgImage(
                    assetName: "assets/svg/Buy.svg",
                  ),
                  onPressed: onCartPressed,
                ),
              IconButton(
                icon: const SvgImage(
                  assetName: "assets/svg/Notification.svg",
                ),
                onPressed: onNotifPressed,
              ),
            ],
            backgroundColor: Color(0xFFE5E5E5),
            elevation: 0.0);
}
