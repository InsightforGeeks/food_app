import 'package:flutter/material.dart';
import 'package:food_app/utils/app_themes.dart';
import 'package:food_app/utils/category_list.dart';
import 'package:food_app/utils/hot_deal_list.dart';
import 'package:food_app/utils/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MyHomePage(title: 'Food App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    // Your screen widgets for each tab
    const HomeScreen(),
    const FavoritesScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(children: [
        IconButton(
          onPressed: () {
            // Handle location dropdown button press
          },
          icon: const Icon(Icons.location_on),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            items: <String>['Location 1', 'Location 2', 'Location 3']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              // Handle location dropdown value change
            },
            hint: const Text('Select Location'),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            // Handle notification icon button press
          },
          icon: const Icon(Icons.notifications),
        ),
      ])),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor:
            const Color(0xFF121212), // Background color for the bottom bar
        selectedItemColor: Colors.pink, // Color for the selected item
        unselectedItemColor: Colors.white, // Color for unselected items
        selectedIconTheme:
            const IconThemeData(size: 24), // Icon size for selected item
        unselectedIconTheme: const IconThemeData(size: 20),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Discoved Good Food Around You',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SearchBar(),
          const SizedBox(
            height: 20,
          ),
          FoodCategoryList(),
          const Text(
            'Hot Deals',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          HotDealsList(),
        ],
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorites Screen'),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cart Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}
