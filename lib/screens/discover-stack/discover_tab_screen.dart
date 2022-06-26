import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_shop/widgets/popular_item_card.dart';
import 'package:mobile_shop/widgets/search_box.dart';
import 'package:mobile_shop/widgets/tab_app_bar.dart';

class DiscoverTabScreen extends StatelessWidget {
  const DiscoverTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomTabAppBar(
        title: "Discover",
        showCart: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: Constraints(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SearchBox(),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 20);
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const PopularItemCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
