// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:learn_flutter_vol01/constants.dart';
import 'package:learn_flutter_vol01/details_screen.dart';
import 'package:learn_flutter_vol01/widgets/category_title.dart';
import 'package:learn_flutter_vol01/widgets/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontWeight: FontWeight.bold),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset(
            "assets/icons/plus.svg",
          ), 
        ),
      ),
      body: Column(
        children: <Widget>[
          // Menu Icon
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          // Headline
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Simple way to find \nTasty food", 
              style: Theme.of(context).textTheme.headlineSmall
            ),
          ),
          // Categories
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTile(title: "All", active: true,),
                CategoryTile(title: "Italian"),
                CategoryTile(title: "Asian"),
                CategoryTile(title: "Chinese"),
                CategoryTile(title: "Burgers"),
              ],
              ),
          ),
          // Search Bar
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget> [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context){
                          return const DetailsScreen();
                        }
                      )
                    );
                  },
                  title: 'Vegan salad bowl', 
                  ingredient: 'red tomato', 
                  image: 'assets/images/image_1.png', 
                  price: 20, 
                  calories: '420Kcal', 
                  description: 'Contratry to popular belief, Loren Ipsum is not simply random text. It has roots in a',),
                const SizedBox(width: 20),
              ],
            ),
          )
        ]
      ),
    );
  }
}



