import 'package:covid_flutter/controller/country_detail_controller.dart';
import 'package:covid_flutter/repository/country_detail_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CountryDetailProvider());
    Get.put(CountryDetailController(provider: Get.find()));
  }
}
class CountryDetailScreen extends GetView<CountryDetailController> {
  const CountryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Theme.of(context).primaryColor,
    appBar: AppBar(
      title: Text("country_details_title".tr),
    ),
    body: SafeArea(
      child: Container(
        color: Theme.of(context).backgroundColor,
      ),
    ),
  );
}