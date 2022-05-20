import 'package:flutter/material.dart';
import 'package:mobile_shop/widgets/home_hero_card.dart';
import 'package:mobile_shop/widgets/icon_button.dart';
import 'package:mobile_shop/widgets/porpular_item_list.dart';
import 'package:mobile_shop/widgets/search_box.dart';
import 'package:mobile_shop/widgets/tab_app_bar.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: CustomTabAppBar(title: "Home"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              // child: Flex(children: [SearchBox()], hori,),
              child: Flex(direction: Axis.horizontal, children: [
                Expanded(flex: 5, child: SearchBox()),
                SizedBox(width: 10),
                Expanded(
                    child: ButtonIcon(
                        onPress: () {}, icon: "assets/svg/Filter.svg"))
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: HomeHeroCard(),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: PopularItemList(),
            ),
          ],
        ),
      ),
    );
  }
}
