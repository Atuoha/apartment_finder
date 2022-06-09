import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../home/single_house.dart';
import '../provider/house.dart';

class AgencyRecommended extends StatelessWidget {
  const AgencyRecommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseData>(
      builder: (context, houseData, child) => houseData.agencyRecommends.isEmpty
          ? Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/oops.jpg',
                    width: 100,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Agency Recommended houses are empty!',
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
              itemCount: houseData.agencyRecommends.length,
              itemBuilder: (context, index) => SingleHouse(
                id: houseData.agencyRecommends[index].id,
                title: houseData.agencyRecommends[index].name,
                location: houseData.agencyRecommends[index].location,
                imgUrl: houseData.agencyRecommends[index].imgUrls[0],
              ),
            ),
    );
  }
}
