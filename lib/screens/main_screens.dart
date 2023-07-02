import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/model/nav_item.dart';
import 'package:market_kurly/screens/recommend/recommend_screen.dart';
import 'package:market_kurly/screens/search/search_screen.dart';

import 'category/category_screen.dart';
import 'home/home_screen.dart';
import 'my_kurly/my_kurly_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main_screens";
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKurlyScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false,
          ),
        ),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem(
      {String? icon,
      String? label,
      bool isActive = false,
      GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(
            icon ?? "assets/icons/star.svg",
            color: isActive ? kPrimaryColor : Colors.black,
          ),
        ),
      ),
      label: label,
    );
  }
}
