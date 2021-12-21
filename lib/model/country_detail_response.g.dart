// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDetailResponse _$CountryDetailResponseFromJson(
        Map<String, dynamic> json) =>
    CountryDetailResponse(
      json['results'] as int? ?? 0,
      (json['response'] as List<dynamic>)
          .map((e) => CountryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryDetailResponseToJson(
        CountryDetailResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'response': instance.countryDetail,
    };

CountryDetail _$CountryDetailFromJson(Map<String, dynamic> json) =>
    CountryDetail(
      json['continent'] as String?,
      json['country'] as String?,
      json['population'] as int?,
      Cases.fromJson(json['cases'] as Map<String, dynamic>),
      Deaths.fromJson(json['deaths'] as Map<String, dynamic>),
      Tests.fromJson(json['tests'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryDetailToJson(CountryDetail instance) =>
    <String, dynamic>{
      'continent': instance.continent,
      'country': instance.country,
      'population': instance.population,
      'cases': instance.caseDetails,
      'deaths': instance.deathsDetails,
      'tests': instance.testDetails,
    };

Cases _$CasesFromJson(Map<String, dynamic> json) => Cases(
      json['new'] as String?,
      json['active'] as int?,
      json['critical'] as int?,
      json['recovered'] as int?,
      json['1M_pop'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$CasesToJson(Cases instance) => <String, dynamic>{
      'new': instance.newCases,
      'active': instance.active,
      'critical': instance.critical,
      'recovered': instance.recovered,
      '1M_pop': instance.percentPop,
      'total': instance.total,
    };

Deaths _$DeathsFromJson(Map<String, dynamic> json) => Deaths(
      json['new'] as String?,
      json['1M_pop'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$DeathsToJson(Deaths instance) => <String, dynamic>{
      'new': instance.newDeaths,
      '1M_pop': instance.percentPop,
      'total': instance.total,
    };

Tests _$TestsFromJson(Map<String, dynamic> json) => Tests(
      json['1M_pop'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$TestsToJson(Tests instance) => <String, dynamic>{
      '1M_pop': instance.percentPop,
      'total': instance.total,
    };
