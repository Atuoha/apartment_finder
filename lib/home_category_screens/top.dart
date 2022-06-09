import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/single_house.dart';
import '../provider/house.dart';

class TopHouses extends StatelessWidget {
  const TopHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseData>(
      builder: (context, houseData, child) => ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: houseData.houses.length,
        itemBuilder: (context, index) => SingleHouse(
          id: houseData.houses[index].id,
          title: houseData.houses[index].name,
          location: houseData.houses[index].location,
          imgUrl: houseData.houses[index].imgUrls[0],
        ),
      ),
    );
  }
}
