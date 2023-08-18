import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/elysium_colony.dart';

import 'pages/home_page.dart';
import 'pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElysiumColony(),
    );
  }
}
