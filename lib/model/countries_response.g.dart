// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesResponse _$CountriesResponseFromJson(Map<String, dynamic> json) =>
    CountriesResponse(
      json['results'] as int,
      (json['response'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CountriesResponseToJson(CountriesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'response': instance.response,
    };
