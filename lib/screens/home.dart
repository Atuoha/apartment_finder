import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estates/constants/color.dart';

import '../components/search.dart';
import '../home/single_small_house.dart';
import '../home_category_screens/agency_recom.dart';
import '../home_category_screens/near.dart';
import '../home_category_screens/top.dart';
import '../provider/house.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var tagIndex = 0;
  final List _tagString = [
    'Top Recommended',
    'Near you',
    'Agency Recommended',
  ];
  final List _tagScreens = const [
    TopHouses(),
    NearHouses(),
    AgencyRecommended(),
  ];

  Widget _tagStrings(String title, int index) {
    return GestureDetector(
      onTap: () => setState(() {
        tagIndex = index;
      }),
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          border: tagIndex == index
              ? const Border(
                  bottom: BorderSide(
                    color: kPurple,
                    width: 2,
                  ),
                )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: tagIndex == index ? kPurple : Colors.grey,
            fontWeight: tagIndex == index ? FontWeight.bold : FontWeight.w400,
            fontSize: tagIndex == index ? 19 : 17,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello Emeka Onuoha!',
                style: TextStyle(
                  color: kFont,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Find your sweet Home',
                style: TextStyle(
                  color: kFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SearchContainer()
            ],
          ),
        ),
        SizedBox(
          height: size.height / 28,
          child: Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: _tagString.length,
              itemBuilder: (context, index) => _tagStrings(
                _tagString[index],
                index,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height / 2.5,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 13,
            ),
            child: _tagScreens[tagIndex],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Best Offer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kFont,
                ),
              ),
              Text(
                'Sell All',
                style: TextStyle(
                  color: kFont,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:13.0),
          child: SizedBox(
              height: size.height / 5.3,
              child:Consumer<HouseData>(
              builder: (context, houseData, child) => ListView.builder(
                reverse:true,
                padding: EdgeInsets.zero,
                itemCount: houseData.houses.length,
                itemBuilder: (context, index) => SingleSmallHouse(
                  id: houseData.houses[index].id,
                  bedrooms: houseData.houses[index].bedrooms,
                  garages: houseData.houses[index].garage,
                  bathrooms: houseData.houses[index].bathrooms,
                  title: houseData.houses[index].name,
                  location: houseData.houses[index].location,
                  imgUrl: houseData.houses[index].imgUrls[0],
                ),
              ),
            ),
              ),
        ),
      ],
    );
  }
}
