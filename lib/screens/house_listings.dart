import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/search.dart';
import '../components/single_house_listing.dart';
import '../constants/color.dart';
import '../provider/house.dart';

class HouseListings extends StatelessWidget {
  const HouseListings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover Houses Around!',
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
                builder: (context, houseData, child) => GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 3,
                  children: houseData.houses
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
