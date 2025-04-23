// ignore_for_file: deprecated_member_use
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_food_app/styles/app_styles.dart';

// Burger Model (Moved to Top-Level)
class Burger {
  final String title;
  final String imageUrl;
  final double rating;
  final int distance;
  final String price;

  Burger({
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.distance,
    required this.price,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
      ),
    );
  }

  // List of Burgers
  List<Burger> burgers = [
    Burger(
      title: 'Ordinary Burgers',
      imageUrl: 'assets/images/bergar.jpeg',
      rating: 4.9,
      distance: 190,
      price: '\$17,230',
    ),
    Burger(
      title: 'Burger With Meat',
      imageUrl: 'assets/images/bergerr.jpeg',
      rating: 4.9,
      distance: 190,
      price: '\$17,230',
    ),
    Burger(
      title: 'Veggie Burger',
      imageUrl: 'assets/images/perger.jpeg',
      rating: 4.8,
      distance: 200,
      price: '\$15,000',
    ),
    Burger(
      title: 'Cheeseburger',
      imageUrl: 'assets/images/patatezbergeer.jpeg',
      rating: 4.7,
      distance: 180,
      price: '\$16,500',
    ),
  ];

  int _selectedIndex = 0;

  // Define the missing widgets
  final List<Widget> widgetOptions = [
    Home(), // Replace with an actual implementation
    ProfileScreen(), // Replace with an actual implementation
    SettingsScreen(), // Replace with an actual implementation
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 250,
        elevation: 0,
        backgroundColor: AppStyles.primaryTextColor,
        flexibleSpace: Stack(
          children: [
            Image.asset(
              'assets/images/bd.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(color: Colors.black.withOpacity(0.3)),
            Positioned(
              top: 200,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Provide the best\nfood for you',
                    style: AppStyles.whiteBoldStyle.copyWith(
                      fontSize: 24,
                      fontFamily: 'AppleGaramond',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 60,
              right: 20,
              child: Row(
                children: [
                  Text(
                    'Your Location',
                    style: AppStyles.whiteBoldStyle.copyWith(
                      fontFamily: 'AppleGaramond',
                    ),
                  ),
                  const SizedBox(width: 170),
                  GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        print("Circle 1 tapped");
                      }
                    },
                    child: Container(
                      width: 50,
                      height: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 19),
                  GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        print("Circle 2 tapped");
                      }
                    },
                    child: Container(
                      width: 50,
                      height: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppStyles.primaryTextColor,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find by Category',
                style: AppStyles.bodyStyle.copyWith(
                  fontSize: 17,
                  fontFamily: 'AppleGaramond',
                ),
              ),
              const SizedBox(height: 8),
              // Integrated Row widget
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Container 1 clicked!');
                        }
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/bited.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Container 2 clicked!');
                        }
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/san.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Container 3 clicked!');
                        }
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/7bsyo.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Container 4 clicked!');
                        }
                      },
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/501.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // GridView for burgers
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: burgers.length,
                itemBuilder: (context, index) {
                  final burger = burgers[index];
                  return GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        print('Burger ${burger.title} clicked!');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFF7C7C7C),
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                burger.imageUrl,

                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  burger.title,
                                  style: AppStyles.bodyStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${burger.rating}',
                                      style: AppStyles.bodyStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.orange,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${burger.distance}m',
                                      style: AppStyles.bodyStyle.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  burger.price,
                                  style: AppStyles.bodyStyle.copyWith(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Missing Widgets Definition
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings Screen', style: TextStyle(fontSize: 24)),
    );
  }
}
