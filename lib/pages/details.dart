import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Item Detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // Handle minus button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
                'assets/image1.jpg'), // Replace with your own image asset
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              // Handle minus button press
                            },
                          ),
                          const Text(
                            '4.5', // Replace with your own rating
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Food Item Name', // Replace with your own food item name
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            // Handle minus button press
                          },
                        ),
                        const Text('2'), // Replace with your own quantity count
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Handle plus button press
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Ingredients',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    IngredientItem(icon: Icons.local_pizza, name: 'Chiken'),
                    SizedBox(
                      width: 10,
                    ),
                    IngredientItem(icon: Icons.local_pizza, name: 'Onion'),
                    SizedBox(
                      width: 10,
                    ),
                    IngredientItem(icon: Icons.local_pizza, name: 'Mushroom'),
                    // Add more IngredientItem widgets as needed
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Food Item Description', // Replace with your own food item description
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'In this example, the Container widget is wrapped with a BoxDecoration. The Border.all property is used to set the border color to grey (Colors.grey). The borderRadius property is set to BorderRadius.circular(10) to define a circular border with a radius of 10.', // Replace with your own food item description
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$9.99', // Replace with your own price
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle add to cart button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.pink, // Set the background color to pink
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), // Set the border radius to create a round shape
                  ),
                ),
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  final IconData icon;
  final String name;

  const IngredientItem({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.pink,
          ),
          const SizedBox(height: 10.0),
          Text(name),
        ],
      ),
    );
  }
}
