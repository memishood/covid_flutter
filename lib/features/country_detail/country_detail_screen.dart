import 'package:covid_flutter/common_ui/views/empty_view.dart';
import 'package:covid_flutter/common_ui/views/error_view.dart';
import 'package:covid_flutter/controller/country_detail_controller.dart';
import 'package:covid_flutter/repository/country_detail_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'country_detail_item.dart';

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
        child: controller.obx((state) => ListView.builder(
          itemCount: state?.results,
          itemBuilder: (context, index) => CountryDetailItem(
            countryDetail: state!.countryDetail[index],
          ),
        ),
            onLoading: const Center(child: CircularProgressIndicator()),
            onEmpty: Center(
                child: EmptyView(
                  onPressed: () => controller.fetchCountry(),
                ).marginAll(20.0)
            ),
            onError: (err) => Center(
            child: ErrorView(
              errorMessage: err,
              onPressed: () => controller.fetchCountry(),
            ).marginAll(20.0),
          )
        ),
      ),
    ),
  );
}