import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/model/product.dart';
import 'package:market_kurly/model/product_details_arguments.dart';
import 'package:market_kurly/screens/components/default_button.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("title"),
      ),
      body: Body(product: arguments.product),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
