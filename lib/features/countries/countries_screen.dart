import 'package:covid_flutter/controller/countries_controller.dart';
import 'package:covid_flutter/repository/countries_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CountriesProvider());
    Get.put(CountriesController(provider: Get.find()));
  }
}
class CountriesScreen extends GetView<CountriesController> {
  const CountriesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Hello World!"),
    ),
  );
}