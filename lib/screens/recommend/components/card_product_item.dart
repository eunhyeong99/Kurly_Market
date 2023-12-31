import 'package:flutter/material.dart';
import 'package:market_kurly/screens/components/product_item.dart';

import '../../../model/product.dart';

class CardProductItem extends StatelessWidget {
  final Product item;

  const CardProductItem({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ProductItem(
              product: item,
              lineChange: true,
              textContainerHeight: 50,
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFFF5F5F5)),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "이렇게 치즈가 가득한 돈까스를 집에서 먹으니 좋네요"
                  "에어프라이어에 돌리니 간편하고 맛있어요",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
