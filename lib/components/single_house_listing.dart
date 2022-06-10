import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/color.dart';
import '../provider/house.dart';

class SingleHouseListing extends StatelessWidget {
  final int id;
  final String title;
  final String location;
  final String imgUrl;
  const SingleHouseListing({
    Key? key,
    required this.id,
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
        wordsToCutOut = length - 13;
      } else if (length < 45) {
        wordsToCutOut = length - 20;
      } else if (length > 45) {
        wordsToCutOut = length - 45;
      }

      return '${sentence.substring(0, wordsToCutOut)}...';
    }

    return Container(
      margin: const EdgeInsets.only(right: 10),
      // width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 25,
                right: 10,
                child: GestureDetector(
                  onTap: () => houseData.toggleSave(id),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        houseData.isSaved(id)
                            ? Icons.turned_in
                            : Icons.turned_in_not,
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                left: 0,
                child: Container(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fewWords(title),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kFont,
                              ),
                            ),
                            Text(
                              fewWords(location),
                              style: const TextStyle(
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => houseData.toggleFavorite(id),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrange,
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
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
