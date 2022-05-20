import 'package:flutter/material.dart';

void tmpFunction() {
  print('Function Called.');
}

class HomeHeroCard extends StatelessWidget {
  const HomeHeroCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
      child: GestureDetector(
        onTap: tmpFunction,
        child: Image.asset(
          'assets/images/home-hero-img.png',
          width: width,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
      // InkWell(
      //   onTap: tmpFunction,
      //   child: Image.network(
      //     'https://flutter-examples.com/wp-content/uploads/2019/09/image_button.png',
      //     width: 200,
      //     fit: BoxFit.cover,
      //   ),
      // )
    );
  }
}
