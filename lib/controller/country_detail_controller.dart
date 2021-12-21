import 'package:covid_flutter/model/base_response.dart';
import 'package:covid_flutter/repository/country_detail_provider.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountryDetailController extends GetxController with StateMixin<BaseResponse> {
  CountryDetailController({required this.provider});
  final CountryDetailProvider provider;
}