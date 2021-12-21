import 'package:covid_flutter/model/countries_response.dart';
import 'package:covid_flutter/repository/countries_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesController extends GetxController with
    StateMixin<CountriesResponse> {
  CountriesController({ required this.provider });
  final CountriesProvider provider;

  /// not used but required
  final searchFieldController = TextEditingController();

  final searchText = "".obs;
  search(String text) {
    if (text.isEmpty || text.length >= 3) {
      searchText.value = text;
    }
  }

  @override
  void onInit() {
    ever(searchText, (text) => change(null, status: RxStatus.loading()));
    fetchCountries();
    debounce(searchText, (text) {
      if (text.toString().isNotEmpty) {
        fetchCountries(countryName: text.toString());
      } else {
        fetchCountries();
      }
    }, time: const Duration(seconds: 1));
    super.onInit();
  }

  fetchCountries({ String? countryName }) {
    change(null, status: RxStatus.loading());
    provider.fetchCountries(countryName: countryName).then((result) {
      CountriesResponse? data = result.body;
      if (data != null && data.response.isNotEmpty == true) {
        change(data, status: RxStatus.success());
      } else {
        change(null, status: RxStatus.empty());
      }
    }, onError: (err) => change(null, status: RxStatus.error(err.toString())));
  }
}