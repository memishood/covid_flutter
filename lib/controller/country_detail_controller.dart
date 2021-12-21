import 'package:covid_flutter/model/country_detail_response.dart';
import 'package:covid_flutter/repository/country_detail_provider.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountryDetailController extends GetxController with StateMixin<CountryDetailResponse> {
  CountryDetailController({required this.provider});
  final CountryDetailProvider provider;

  @override
  void onInit() {
    fetchCountry();
    super.onInit();
  }

  fetchCountry() {
    final List<dynamic> arguments = Get.arguments;
    final String countryName = arguments.first;
    change(null, status: RxStatus.loading());
    provider.fetchCountry(countryName).then((result) {
      CountryDetailResponse? data = result.body;
      if (data != null && data.countryDetail.isNotEmpty == true) {
        change(data, status: RxStatus.success());
      } else {
        change(null, status: RxStatus.empty());
      }
    },
        onError: (err) => change(null, status: RxStatus.error(err.toString())));
  }
}