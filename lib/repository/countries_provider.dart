import 'package:covid_flutter/model/country_result.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = CountryResult.fromJson;
    httpClient.baseUrl = 'https://covid-193.p.rapidapi.com';
    httpClient.addRequestModifier<void>((request) {
      request.headers['x-rapidapi-host'] = 'covid-193.p.rapidapi.com';
      request.headers['x-rapidapi-key'] = '7230f0073fmsh19c10074c514c59p16793ejsn6aa0e35fe867';
      return request;
    });
  }
  Future<Response<CountryResult>> fetchCountries() async => get<CountryResult>("/countries");
}