# HotelTrip

HotelTrip is a Flutter mobile application for discovering hotels and viewing detailed information about accommodation options.

## Project Idea

Finding a suitable hotel can be inconvenient when users have to compare different accommodation options and navigate through large amounts of information.
HotelTrip provides a simple and clear interface where users can discover recommended hotels, explore popular destinations, and open a detailed hotel page before making a booking decision.

## Problem the Project Solves

Travelers often need to spend time searching for hotels, comparing options, and finding important information such as location, rating, price, and available facilities.
HotelTrip aims to solve this problem by bringing the most important hotel information into one simple interface.

Users can:

- search for hotels or destinations;
- explore popular destinations;
- view recommended hotels;
- see hotel photos, locations, ratings, and prices;
- open a detailed hotel page;
- save a hotel as a favorite.

## Target Users

HotelTrip is designed for:

- travelers looking for accommodation;
- students and young people planning trips;
- users who want to quickly compare hotel options;
- families that want to quickly find the best option for high-quality vacation.

## Main Features

### Home Screen

The Home Screen contains:

- HotelTrip application title;
- hotel and destination search field;
- popular destination chips;
- recommended hotel cards;
- hotel images;
- location;
- rating;
- price per night.

### Hotel Details Screen

The Details Screen provides:

- large hotel image;
- hotel name;
- location;
- rating;
- hotel facilities;
- description;
- price per night;
- booking button;
- favorite button.

### Favorite Interaction

Users can press the heart button to mark or unmark a hotel as a favorite.

This feature uses `StatefulWidget` and `setState()` to update the interface dynamically.

### Navigation

The application uses Flutter's `Navigator` to move from the Home Screen to the Hotel Details Screen.


## Project Structure

```text
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   └── hotel_details_screen.dart
├── widgets/
│   └── hotel_card.dart
└── models/