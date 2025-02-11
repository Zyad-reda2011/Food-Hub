import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scr/CategoryCard.dart';
import 'package:scr/FeaturedRestrauntCard.dart';

class FoodScreen extends StatelessWidget 
{
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      // App-Bar the top part of the page.
      appBar: 
      AppBar
      (
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const Icon(Icons.menu , color: Colors.black,),
        title: 
        const Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Text
            (
              'Deliver to',
              style: TextStyle
              (
                color: Color(0xff8C9099),
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: "Sofia Pro",
              ),
            ),
            Text
            (
              '4102 Pretty View Lane',
              style: TextStyle
              (
                color: Color(0xffFE724C),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "Sofia Pro",
              ),
            ),
          ],
        ),
        actions: 
        const 
        [
          CircleAvatar
          (
            backgroundColor: Colors.amber,
            child: 
            Icon
            (
              Icons.incomplete_circle_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      /// The Body Page
      body:
      ListView
      (
        padding: const EdgeInsets.all(16),
        children: 
        [
          const Text
          (
            "What Would you Like to Order",
            style: TextStyle
            (
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Sofia Pro",
              fontSize: 40
            ),
          ),
          const SizedBox(height: 15,),
          // Bar Search-->
          Container
          (
            decoration: BoxDecoration
            (
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: 
            const Row
            (
              children: 
              [
                Icon(Icons.search , color: Colors.grey,),
                SizedBox(width: 9,),
                Expanded
                (
                  child: 
                  TextField
                  (
                    decoration: InputDecoration
                    (
                      hintText: 'Find for Food or Restaraunt...',
                      hintStyle: TextStyle
                      (
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 16
                      )
                    ),
                  )
                ),
                Icon(Icons.tune, color: Color(0xffFE724C))
              ],
            ),
          ),
          const SizedBox(height: 24,),
          // Food-Types ( Pizza , Mexican , Asian , Burger , Donut ,.......)
          SingleChildScrollView
          (
            scrollDirection: Axis.horizontal,
            child:
            Row
            (
              children: 
              [
                CategoryCard(icon: Image.asset('assets/burger.png'), label: "Burger"),
                CategoryCard(icon: Image.asset('assets/asian.png'), label: "Asian"),
                CategoryCard(icon: Image.asset('assets/donut.png'), label: "Donut"),
                CategoryCard(icon: Image.asset('assets/mexican.png'), label: "Mexican"),
                CategoryCard(icon: Image.asset('assets/pizza.png'), label: "Pizza")
              ],
            ),
          ),
          const SizedBox(height: 30,),
          ///////////// Featured Restraunts Section
          const Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Text
              (
                'Featured Restraunts',
                style: TextStyle
                (
                  color: Color.fromARGB(255, 30, 24, 82),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sofia Pro",
                  fontSize: 24
                ),
              ),
              Text
              (
                'View All >',
                style: TextStyle
                (
                  color: Color(0xffFE724C),
                  fontWeight: FontWeight.normal,
                  fontFamily: "Sofia Pro",
                  fontSize: 18
                ),
              )
            ],
          ),
          const SizedBox(height: 16,),
          FeaturedRestrauntCard
          (
            backgroundUrl: 'assets/Mcdonalds.png',
            restrauntName: "McDonald's",
            rating: '4.5', 
            foodTags: const ['BURGER' , 'CHICKEN' , 'FAST FOOD'], 
            time: '10-15 mins'
          ),
          FeaturedRestrauntCard
          (
            backgroundUrl: 'assets/StarBucks.png',
            restrauntName: 'Starbucks',
            rating: '4.7', 
            foodTags: const ['BURGER' , 'FAST FOOD'], 
            time: '20-30 mins'
          ),
          BottomNavigationBar
          (
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xffFE724C),
            currentIndex: 0,
            items: 
            [
              BottomNavigationBarItem(icon: Image.asset('assets/compass.png') , label: ""),
              BottomNavigationBarItem(icon: Image.asset('assets/map.png') , label: ""),
              BottomNavigationBarItem(icon: Image.asset('assets/bag.png') , label: ""),
              BottomNavigationBarItem(icon: Image.asset('assets/love.png') , label: ""),
              BottomNavigationBarItem(icon: Image.asset('assets/bell.png') , label: ""),
            ] 
          )
        ],
      ) ,
    );
  }
}
