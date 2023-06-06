import 'package:flutter/material.dart';
import 'package:food_app/models/hot_deals.dart';
import 'package:food_app/utils/hor_deal_card.dart';

class HotDealsList extends StatelessWidget {
  final List<HotDeal> deals = [
    HotDeal(name: 'Pizza', image: 'assets/image1.jpg', price: 10.99),
    HotDeal(name: 'Burger', image: 'assets/image2.jpg', price: 8.99),
    HotDeal(name: 'Sushi', image: 'assets/image3.jpg', price: 15.99),
  ];

  HotDealsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListView.builder(
        itemCount: deals.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HotDealCard(deal: deals[index]);
        },
      ),
    );
  }
}
