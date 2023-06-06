import 'package:flutter/material.dart';
import 'package:food_app/models/hot_deals.dart';
import 'package:food_app/pages/details.dart';

class HotDealCard extends StatelessWidget {
  final HotDeal deal;

  const HotDealCard({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FoodDetailPage()))
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 3 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  deal.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 250,
                color: Colors.black.withOpacity(0.5),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          deal.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      '\$${deal.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
