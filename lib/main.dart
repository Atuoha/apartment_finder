import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estates/provider/house.dart';

import 'home/bottom_nav.dart';
import 'provider/agents.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HouseData(),
        ),
        ChangeNotifierProvider(
          create: (context) => AgentData(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNav(),
        routes: {},
      ),
    );
  }
}
