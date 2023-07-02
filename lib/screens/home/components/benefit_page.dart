import 'package:flutter/material.dart';
import 'package:market_kurly/model/benefit_banner.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({Key? key}) : super(key: key);

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  Future _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            color: Color(0xFF4E4DA * (index + 1)),
            height: 140,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text("${benefitBannerList[index].title}"),
                    Text("${benefitBannerList[index].benefit}"),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  benefitBannerList[index].image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        itemCount: benefitBannerList.length,
      ),
    );
  }
}
