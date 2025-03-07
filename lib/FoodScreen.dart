import 'package:flutter/material.dart';
import 'package:scr/CategoryCard.dart';
import 'package:scr/FeaturedRestrauntCard.dart';
import 'package:scr/SideMenu.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Deliver to',
              style: TextStyle(
                color: Color(0xff8C9099),
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: "Sofia Pro",
              ),
            ),
            Text(
              '4102 Pretty View Lane',
              style: TextStyle(
                color: Color(0xffFE724C),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "Sofia Pro",
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "What would you like to order?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sofia Pro",
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 9),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Find food or restaurant...',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Sofia Pro",
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.tune, color: Color(0xffFE724C)),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(icon: Image.asset('assets/burger.png'), label: "Burger"),
                    CategoryCard(icon: Image.asset('assets/asian.png'), label: "Asian"),
                    CategoryCard(icon: Image.asset('assets/donut.png'), label: "Donut"),
                    CategoryCard(icon: Image.asset('assets/mexican.png'), label: "Mexican"),
                    CategoryCard(icon: Image.asset('assets/pizza.png'), label: "Pizza"),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured Restaurants',
                    style: TextStyle(
                      color: Color.fromARGB(255, 30, 24, 82),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 24,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All >',
                      style: TextStyle(
                        color: Color(0xffFE724C),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              FeaturedRestrauntCard(
                backgroundUrl: 'assets/Mcdonalds.png',
                restrauntName: "McDonald's",
                rating: '4.5',
                foodTags: const ['BURGER', 'CHICKEN', 'FAST FOOD'],
                time: '10-15 mins',
              ),
              FeaturedRestrauntCard(
                backgroundUrl: 'assets/StarBucks.png',
                restrauntName: 'Starbucks',
                rating: '4.7',
                foodTags: const ['BURGER', 'FAST FOOD'],
                time: '20-30 mins',
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xffFE724C),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/compass.png'), label: ""),
          BottomNavigationBarItem(icon: Image.asset('assets/map.png'), label: ""),
          BottomNavigationBarItem(icon: Image.asset('assets/bag.png'), label: ""),
          BottomNavigationBarItem(icon: Image.asset('assets/love.png'), label: ""),
          BottomNavigationBarItem(icon: Image.asset('assets/bell.png'), label: ""),
        ],
      ),
    );
  }
}
