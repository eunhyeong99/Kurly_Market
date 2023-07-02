import 'package:flutter/material.dart';
import 'package:market_kurly/model/product.dart';
import 'package:market_kurly/screens/home/components/circle_container.dart';
import 'package:market_kurly/screens/home/components/product_filter_button.dart';

import '../../components/product_item.dart';

class ThriftyShoppingPage extends StatelessWidget {
  const ThriftyShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: ProductFilterButton(),
                  width: 100,
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      left: 10,
                      child: CircleContainer(
                        iconPath: "assets/icons/shopping-cart.svg",
                      ),
                    ),
                  ],
                );
              },
              childCount: productList.length,
            ),
          ),
        ),
      ],
    );
  }
}
