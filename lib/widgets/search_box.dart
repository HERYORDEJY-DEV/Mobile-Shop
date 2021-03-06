import 'package:flutter/material.dart';
import 'package:mobile_shop/styles/colors.dart';
import 'package:mobile_shop/widgets/icon_button.dart';
import 'package:mobile_shop/widgets/svg_image.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: [
      Expanded(
        flex: 5,
        child: PhysicalModel(
          color: Colors.white,
          elevation: 3.0,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: SvgImage(
                assetName: "assets/svg/Search.svg",
                height: 14,
                width: 14,
              ),
              border: InputBorder.none,
              labelText: 'Search',
              labelStyle: TextStyle(
                color: AppColors.grey,
              ),
              constraints: BoxConstraints(maxHeight: 50, minHeight: 50),
            ),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(child: ButtonIcon(onPress: () {}, icon: "assets/svg/Filter.svg"))
    ]);
  }
}

/*
Flex(direction: Axis.horizontal, children: [
                Expanded(flex: 5, child: SearchBox()),
                SizedBox(width: 10),
                Expanded(
                    child: ButtonIcon(
                        onPress: () {}, icon: "assets/svg/Filter.svg"))
              ])
 */
