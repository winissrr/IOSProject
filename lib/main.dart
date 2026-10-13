import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const HotelTripApp());
}

class HotelTripApp extends StatelessWidget {
  const HotelTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HotelTrip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}