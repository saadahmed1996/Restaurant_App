import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_application/pages/food/popular_food_detail.dart';
import 'package:restaurant_application/pages/food/recommended_food_detail.dart';
import 'package:restaurant_application/pages/home/main_food_body.dart';
import 'package:restaurant_application/utils/colors.dart';
import 'package:restaurant_application/widgets/app_icon.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    MainBody(),
    PopularFoodDetail(),
    RecommendedFoodDetail(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: AppIcon(
              icon: Icons.home,
              size: 24,
              iconColor: CustomColors.mainAppColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(
              icon: Icons.circle,
              size: 24,
              iconColor: CustomColors.mainAppColor,
            ),
            label: 'Recommended',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(
              icon: Icons.business,
              size: 24,
              iconColor: CustomColors.mainAppColor,
            ),
            label: 'Popular',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 15),
        selectedItemColor: CustomColors.primaryTextColor,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}