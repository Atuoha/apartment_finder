import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/color.dart';
import '../screens/favorite_listings.dart';
import '../screens/house_listings.dart';
import '../screens/agents.dart';
import '../screens/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/saved_listings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;
  final List _pages = const [
    HomeScreen(),
    AgentsScreen(),
    HouseListings(),
    FavoriteHouseListings(),
    SavedHouseListings()
  ];

  void selectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            onTap: selectPage,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: kPurple,
            currentIndex: pageIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  // pageIndex == 0 ? Icons.home : Icons.home_outlined,
                  Icons.home,
                  color: pageIndex == 0 ? kPurple : Colors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home_search.svg',
                  color: pageIndex == 1 ? kPurple : Colors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/notification.svg',
                  color: pageIndex == 2 ? kPurple : Colors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/chat.svg',
                  color: pageIndex == 3 ? kPurple : Colors.grey,
                ),
                label: '',
              ),
              //  BottomNavigationBarItem(
              //   icon:Icon(Icons.favorite_border),
              //   label: '',
              // ),

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home_mark.svg',
                  color: pageIndex == 4 ? kPurple : Colors.grey,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/avatar.jpg',
              ),
            ),
          )
        ],
      ),
      backgroundColor: kBackground,
      extendBody: true,
      body: _pages[pageIndex],
    );
  }
}
