import 'package:flutter/material.dart';
import 'package:market_kurly/model/product_details_arguments.dart';
import 'package:market_kurly/screens/details/details_screen.dart';
import 'package:market_kurly/strings_extensions.dart';
import '../../model/product.dart';
import '../../theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem({
    Key? key,
    required this.product,
    this.lineChange = false,
    this.textContainerHeight = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: product),
              );
            },
            child: Image.network(
              product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: textContainerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "${product.title} ${lineChange == true ? "\n" : ""}",
                ),
                TextSpan(
                  text: " ${product.discount}% ",
                ),
                TextSpan(
                  text:
                      discountPrice(product.price ?? 0, product.discount ?? 0),
                ),
                TextSpan(
                  text: "${product.price.toString().numberFormat()}원",
                ),
              ]),
            ),
          ),
        )
      ],
    );
  }

  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return "${discountPrice.toString().numberFormat()}원 ";
  }
}
