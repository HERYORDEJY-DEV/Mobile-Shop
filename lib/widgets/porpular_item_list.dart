import 'package:flutter/material.dart';
import 'package:mobile_shop/widgets/popular_item_card.dart';

class PopularItemList extends StatelessWidget {
  const PopularItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GridView.count(
      physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      // padding: EdgeInsets.only(left: 20, right: 20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      primary: true,
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      children: List.generate(10, (index) {
        return const PopularItemCard();
      }),
    );
  }
}
