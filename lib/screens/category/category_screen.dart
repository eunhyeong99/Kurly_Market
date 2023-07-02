import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/model/grid_category_menu.dart';
import 'package:market_kurly/model/list_category_menu.dart';
import 'package:market_kurly/screens/category/components/extends_icon_text_card.dart';
import 'package:market_kurly/screens/category/components/image_text_card.dart';
import 'package:market_kurly/screens/components/custom_actions.dart';
import 'package:market_kurly/screens/components/text_menu_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("카테고리"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: TextMenuCard(
                title: "자주 사는 상품",
                icon: "assets/icons/right-arrow.svg",
                textColor: kPrimaryColor,
                iconColor: kPrimaryColor,
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                listCategoryMenuList.length,
                (index) => ExtendsIconTextCard(
                  item: listCategoryMenuList[index],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "컬리의 추천",
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ImageTextCard(
                    item: gridCategoryMenuList[index],
                  );
                },
                childCount: gridCategoryMenuList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
