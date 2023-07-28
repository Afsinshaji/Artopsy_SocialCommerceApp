import 'package:flutter/material.dart';

final categoryItems = [
  "Digital Art",
  "Painting",
  "Photography",
  "Drawing",
  "Sculpture",
  "Print Making",
  "Mixed Art",
];

final measurements = ['Height', 'Width', 'Depth'];
final aboutArtwork = ['Title', 'Artist', 'Category', 'Size'];
final profileMenuItems = [
  'My Wallet',
  'My Order',
  'My Favourites',
  'Shipping Adress',
  'Sales Panel',
];
final settigsMenuItems = [ 'Privacy Policy', 'About Artopsy'];
final profileMenuIcons = [
  Icons.person,
  Icons.shopping_bag,
  Icons.favorite,
  Icons.fire_truck,
  Icons.business
];
final settigsMenuIcons = [
  
  Icons.admin_panel_settings,
  Icons.privacy_tip
];
final List<String> filterList = ['Category', 'Price', 'Availability'];

final List<String> filterCategory = [
  "All",
  "Digital Art",
  "Painting",
  "Photography",
  "Drawing",
  "Sculpture",
  "Print Making",
  "Mixed Art",
];
final List<String> filterPrice = [
   "All",
  "< ₹1000",
  "₹1000 - ₹10000",
  "> ₹10000",
];
final List<String> filterAvailability = [
   "All",
  'Sold',
  'Not Yet Sold',
];

final List<List<String>> filterItemList = [
  filterCategory,
  filterPrice,
  filterAvailability
];
