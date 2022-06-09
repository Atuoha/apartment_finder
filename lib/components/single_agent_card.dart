import 'package:flutter/material.dart';
import '../constants/color.dart';

class SingleAgentCard extends StatelessWidget {
  final int id;
  final String name;
  final String imgUrl;
  final String mobile;

  const SingleAgentCard({
    Key? key,
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customWidget(IconData icon, String tag) {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(icon, color: kFont, size: 18),
          const SizedBox(width: 10),
          Text(
            tag,
          ),
        ],
      );
    }

    return Stack(children: [
      Positioned(
        top: 53,
        right: 0,
        left: 0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customWidget(Icons.person, name),
                const SizedBox(height: 5),
                customWidget(Icons.phone, mobile),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kPurple,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'View Listings',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(imgUrl),
        ),
      )
    ]);
  }
}
