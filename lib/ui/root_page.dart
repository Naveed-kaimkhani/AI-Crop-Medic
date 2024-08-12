import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_disease_detection/constants.dart';
import 'package:plant_disease_detection/provider/language_provider.dart';
import 'package:plant_disease_detection/ui/scan_page.dart';
import 'package:plant_disease_detection/ui/screens/home_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // List<Plant> favorites = [];
  // List<Plant> myCart = [];

  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions() {
    return [
      const HomePage(),
      const HomePage(),
      const HomePage(),
      const HomePage(),
    ];
  }

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  //List of the pages titles
  List<String> titleList = [
    'Home',
    'Favorite',
    'Cart',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageProvider.greeting,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Text(
                  titleList[_bottomNavIndex],
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  languageProvider.isEnglish ? 'EN' : 'UR',
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 18,
                  ),
                ),
                Switch(
                  value: languageProvider.isEnglish,
                  onChanged: (value) {
                    languageProvider.toggleLanguage();
                  },
                  activeColor: Constants.primaryColor,
                ),
                Icon(
                  Icons.notifications,
                  color: Constants.blackColor,
                  size: 30.0,
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const ScanPage(),
                  type: PageTransitionType.bottomToTop));
        },
        child: Image.asset(
          'assets/images/code-scan-two.png',
          height: 30.0,
        ),
        backgroundColor: Constants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Constants.primaryColor,
          activeColor: Constants.primaryColor,
          inactiveColor: Colors.black.withOpacity(.5),
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
              // final List<Plant> favoritedPlants = Plant.getFavoritedPlants();
              // final List<Plant> addedToCartPlants = Plant.addedToCartPlants();

              // favorites = favoritedPlants;
              // myCart = addedToCartPlants.toSet().toList();
            });
          }),
    );
  }
}
