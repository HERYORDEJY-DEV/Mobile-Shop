import 'package:flutter/material.dart';
import 'package:mobile_shop/styles/colors.dart';
import 'package:mobile_shop/widgets/svg_image.dart';

const TextStyle discountStyle = TextStyle(
  color: AppColors.white,
  fontSize: 11,
);

const TextStyle titleStyle = TextStyle(
    color: AppColors.lightDark, fontSize: 17, fontWeight: FontWeight.w600);

const TextStyle priceStyle = TextStyle(
  color: AppColors.green,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

const TextStyle reviewStyle = TextStyle(
    color: AppColors.dark, fontSize: 11, fontWeight: FontWeight.normal);

class PopularItemCard extends StatelessWidget {
  const PopularItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 34,
                  height: 21,
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Center(
                    child: Text(
                      "-30%",
                      style: discountStyle,
                    ),
                  ),
                ),
                SvgImage(assetName: "assets/svg/Heart.svg")
              ],
            ),
            Image.asset("assets/images/image-phone-1.png"),
            Center(
              child: Column(
                children: [
                  Text(
                    "Oneplus 9",
                    style: titleStyle,
                  ),
                  Text(
                    "945.00 AED",
                    style: priceStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgImage(
                          assetName: "assets/svg/Star.svg",
                          color: AppColors.yellow),
                      Text(
                        "4.5 (3k review)",
                        style: reviewStyle,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
