import 'package:covid_flutter/model/countries_response.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesProvider extends GetConnect {
  static const _apiKey = '7230f0073fmsh19c10074c514c59p16793ejsn6aa0e35fe867';
  @override
  void onInit() {
    httpClient.defaultDecoder = CountriesResponse.fromJson;
    httpClient.baseUrl = 'https://covid-193.p.rapidapi.com';
    httpClient.addRequestModifier<void>((request) {
      request.headers['x-rapidapi-host'] = 'covid-193.p.rapidapi.com';
      request.headers['x-rapidapi-key'] = _apiKey;
      return request;
    });
  }
  fetchCountries({ String? countryName }) async {
    if (countryName != null) {
      return get<CountriesResponse>(
        "/countries",
        query: {
          "search": countryName
        }
      );
    }
    return get<CountriesResponse>("/countries");
  }
}