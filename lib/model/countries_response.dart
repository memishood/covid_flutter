import 'package:json_annotation/json_annotation.dart';

part 'countries_response.g.dart';

/// @author emremms35@gmail.com
@JsonSerializable()
class CountriesResponse {
  final int results;

  final List<String> response;

  CountriesResponse(this.results, this.response);

  factory CountriesResponse.fromJson(json) => _$CountriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CountriesResponseToJson(this);
}