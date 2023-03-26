import 'package:flutter/material.dart';
import 'package:flutter_bitcamp/explore_destinations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// open ExploreDestinations class

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ExploreDestinations(),
      debugShowCheckedModeBanner: false,
    );
  }
}
