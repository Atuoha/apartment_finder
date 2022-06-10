import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/search.dart';
import '../components/single_house_listing.dart';
import '../constants/color.dart';
import '../provider/house.dart';

class FavoriteHouseListings extends StatelessWidget {
  const FavoriteHouseListings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Favorite Houses You Selected ❤️',
            style: TextStyle(
              color: kFont,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'The Bests of them all',
            style: TextStyle(
              color: kFont,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SearchContainer(),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: double.infinity,
                height: double.infinity,
              ),
              child: Consumer<HouseData>(
                builder: (context, houseData, child) => houseData.favoriteHouses.isEmpty
          ? Padding(
            padding: const EdgeInsets.only(top:13.0),
            child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius:BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/oops.jpg',
                        // width: 250,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Favorite houses are empty!',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: kFont,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
          )
          :  GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 3,
                  children: houseData.favoriteHouses
                      .map(
                        (house) => SingleHouseListing(
                          id: house.id,
                          title: house.name,
                          location: house.location,
                          imgUrl: house.imgUrls[0],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
