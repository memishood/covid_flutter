import 'package:covid_flutter/common_ui/views/empty_view.dart';
import 'package:covid_flutter/common_ui/views/error_view.dart';
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

  _countryPressed(String countryName) => Get.toNamed(
      "/country_details",
      arguments: <String>[countryName]
  );

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
            physics: const BouncingScrollPhysics(),
            itemCount: state?.results,
            itemBuilder: (context, index) => CountriesItem(
              /// it can not be empty
              countryName: state?.response[index] ?? "unknown".tr,
              countryPressed: _countryPressed,
            ),
          ),
              onLoading: const Center(child: CircularProgressIndicator()),
              onEmpty: Center(
                child: EmptyView(
                  onPressed: () {
                    if (controller.searchText.isNotEmpty
                        && controller.searchText.value.length >= 3) {
                      controller.fetchCountries(countryName: controller.searchText.value);
                    } else {
                      controller.fetchCountries();
                    }
                  },
                ).marginAll(20.0)
              ),
              onError: (err) => Center(
                child: ErrorView(
                  errorMessage: err,
                  onPressed: () => controller.fetchCountries(),
                ).marginAll(20.0),
              )
          ),
        ),
      ),
    ),
  );
}