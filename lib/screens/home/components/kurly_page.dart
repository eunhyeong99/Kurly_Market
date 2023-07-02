import 'package:flutter/material.dart';
import 'package:market_kurly/model/product.dart';
import 'package:market_kurly/screens/components/product_item.dart';
import 'package:market_kurly/screens/home/components/kurly_banner_item.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 335,
          child: KurlyBannerItem(),
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 16),
          child: Text(
            "이 상품 어때요?",
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: ProductItem(
                  product: productList[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
