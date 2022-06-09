import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/search.svg',
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here.....',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
