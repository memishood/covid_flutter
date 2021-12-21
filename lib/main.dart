import 'package:covid_flutter/common_ui/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/countries/countries_screen.dart';

/// @author emremms35@gmail.com
void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    home: const CountriesScreen(),
    initialBinding: CountriesBinding(),
    debugShowCheckedModeBanner: false,
    translations: Strings(),
    locale: const Locale("tr", "TR"),
    fallbackLocale: const Locale("en", "US"),
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
      backgroundColor: Colors.white,
      cardColor: const Color(0xffffd1d1)
    ),
  );
}