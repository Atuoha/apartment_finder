import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../provider/house.dart';

class SingleSmallHouse extends StatelessWidget {
  final int id;
  final int bedrooms;
  final int bathrooms;
  final int garages;
  final String title;
  final String location;
  final String imgUrl;
  const SingleSmallHouse({
    Key? key,
    required this.id,
    required this.bedrooms,
    required this.bathrooms,
    required this.garages,
    required this.title,
    required this.location,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var houseData = Provider.of<HouseData>(context);

    String fewWords(String sentence) {
      var length = sentence.length;
      var wordsToCutOut = 0;
      if (length < 30) {
        wordsToCutOut = length - 7;
      } else if (length < 45) {
        wordsToCutOut = length - 12;
      } else if (length > 45) {
        wordsToCutOut = length - 30;
      }

      return '${sentence.substring(0, wordsToCutOut)}...';
    }

    Widget customWrap(String assetImage, int number) {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            assetImage,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$number',
            style: const TextStyle(
              color: kFont,
            ),
          )
        ],
      );
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: const Alignment(1, 2),
                  width: 200,
                  child: GestureDetector(
                    onTap: ()=>houseData.toggleFavorite(id),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 205, 202, 202),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          houseData.isFavorite(id)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kFont,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    color: kFont,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    customWrap('assets/icons/bedroom.svg', bedrooms),
                    const SizedBox(width: 10),
                    customWrap('assets/icons/bathroom.svg', bathrooms),
                    const SizedBox(width: 10),
                    customWrap('assets/icons/parking.svg', garages),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
