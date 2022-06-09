import 'package:flutter/material.dart';

class SingleSmallHouse extends StatelessWidget {
  const SingleSmallHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(10))
          ],
        ),
      ),
    );
  }
}
