import 'package:covid_flutter/common_ui/resources/text_styles.dart';
import 'package:covid_flutter/controller/countries_controller.dart';
import 'package:covid_flutter/features/countries/countries_item.dart';
import 'package:covid_flutter/repository/countries_provider.dart';
import 'package:flutter/cupertino.dart';
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

  _countryPressed(String countryName) {

  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Theme.of(context).primaryColor,
    body: SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context_, innerBoxScrolled) => [
          SliverAppBar(
            backgroundColor: Theme.of(context).backgroundColor,
            title: CupertinoSearchTextField(
              controller: controller.searchFieldController,
              onChanged: controller.search,
            ),
          )
        ],
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: controller.obx((state) => ListView.builder(
            itemCount: state?.results,
            itemBuilder: (context, index) => CountriesItem(
              countryName: state?.response[index],
              countryPressed: _countryPressed,
            ),
          ),
              onLoading: const Center(child: CircularProgressIndicator()),
              onEmpty: Center(
                child: Text(
                  "empty".tr,
                  style: TextStyles.regularTextStyle.copyWith(
                    fontSize: 21,
                    color: Colors.black
                  ),
                )
              ),
              onError: (err) => Center(
                child: Text(
                  err ?? "error",
                  style: TextStyles.boldTextStyle.copyWith(
                      fontSize: 21,
                      color: Colors.black
                  ),
                ),
              )
          ),
        ),
      ),
    ),
  );
}