import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../home/single_house.dart';
import '../provider/house.dart';

class NearHouses extends StatelessWidget {
  const NearHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseData>(
      builder: (context, houseData, child) => houseData.nearHouses.isEmpty
          ? Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/oops.jpg',
                    width: 100,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Near houses are empty!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kFont,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(top: 15),
              itemCount: houseData.nearHouses.length,
              itemBuilder: (context, index) => SingleHouse(
                id: houseData.nearHouses[index].id,
                title: houseData.nearHouses[index].name,
                location: houseData.nearHouses[index].location,
                imgUrl: houseData.nearHouses[index].imgUrls[0],
              ),
            ),
    );
  }
}
