import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/countries_screen.dart';

/// @author emremms35@gmail.com
void main() {
  runApp(
    GetMaterialApp(
      home: const CountriesScreen(),
      initialBinding: CountriesBinding(),
      debugShowCheckedModeBanner: false,
    )
  );
}