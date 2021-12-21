import 'package:covid_flutter/model/country_result.dart';
import 'package:covid_flutter/repository/countries_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesController extends SuperController<CountryResult> {
  CountriesController({ required this.provider });
  final CountriesProvider provider;

  final searchFieldController = TextEditingController();

  @override
  void onInit() {
    provider.fetchCountries().then((result) {
      CountryResult? data = result.body;
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
    super.onInit();
  }

  @override
  void onResumed() { }

  @override
  void onPaused() { }

  @override
  void onInactive() { }

  @override
  void onDetached() { }
}