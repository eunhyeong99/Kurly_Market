import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/screens/components/custom_actions.dart';
import 'package:market_kurly/screens/home/components/benefit_page.dart';
import 'package:market_kurly/screens/home/components/kurly_page.dart';
import 'package:market_kurly/screens/home/components/new_product_page.dart';
import 'package:market_kurly/screens/home/components/thrifty_shopping_page.dart';

class HomeScreen extends StatelessWidget {
  List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Kurly"),
          actions: [CustomActions()],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
                color: Colors.white,
              ),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                labelColor: kPrimaryColor,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42.0),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
