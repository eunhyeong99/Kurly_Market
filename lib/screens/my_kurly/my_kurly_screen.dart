import 'package:flutter/material.dart';
import 'package:market_kurly/screens/category/category_screen.dart';
import 'package:market_kurly/screens/components/custom_actions.dart';
import 'package:market_kurly/screens/home/home_screen.dart';
import 'package:market_kurly/screens/my_kurly/components/my_kurly_body.dart';
import 'package:market_kurly/screens/recommend/recommend_screen.dart';
import 'package:market_kurly/screens/search/search_screen.dart';

class MyKurlyScreen extends StatefulWidget {
  const MyKurlyScreen({Key? key}) : super(key: key);

  @override
  State<MyKurlyScreen> createState() => _MyKurlyScreenState();
}

class _MyKurlyScreenState extends State<MyKurlyScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("마이컬리"),
        actions: [
          CustomActions(),
        ],
      ),
      body: SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}
