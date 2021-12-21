import 'package:json_annotation/json_annotation.dart';
part 'country_detail_response.g.dart';

/// @author emremms35@gmail.com
@JsonSerializable()
class CountryDetailResponse {
  CountryDetailResponse(this.results, this.countryDetail);

  factory CountryDetailResponse.fromJson(json)=>
      _$CountryDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CountryDetailResponseToJson(this);

  @JsonKey(defaultValue: 0)
  int results;

  @JsonKey(name: "response")
  List<CountryDetail> countryDetail;
}

@JsonSerializable()
class CountryDetail {
  CountryDetail(this.continent, this.country, this.population,
      this.caseDetails, this.deathsDetails, this.testDetails);

  factory CountryDetail.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailFromJson(json);
  Map<String, dynamic> toJson() => _$CountryDetailToJson(this);

  @JsonKey(includeIfNull: true)
  String? continent;

  @JsonKey(includeIfNull: true)
  String? country;

  @JsonKey(includeIfNull: true)
  int? population;

  @JsonKey(name: "cases")
  Cases caseDetails;

  @JsonKey(name: "deaths")
  Deaths deathsDetails;

  @JsonKey(name: "tests")
  Tests testDetails;
}

@JsonSerializable()
class Cases {
  Cases(this.newCases, this.active, this.critical,
      this.recovered, this.percentPop, this.total);

  factory Cases.fromJson(Map<String, dynamic> json) => _$CasesFromJson(json);
  Map<String, dynamic> toJson() => _$CasesToJson(this);

  @JsonKey(name: "new", includeIfNull: true)
  String? newCases;

  @JsonKey(includeIfNull: true)
  int? active;

  @JsonKey(includeIfNull: true)
  int? critical;

  @JsonKey(includeIfNull: true)
  int? recovered;

  @JsonKey(name: "1M_pop", includeIfNull: true)
  String? percentPop;

  @JsonKey(includeIfNull: true)
  int? total;
}

@JsonSerializable()
class Deaths {
  Deaths(this.newDeaths, this.percentPop, this.total);

  factory Deaths.fromJson(Map<String, dynamic> json) => _$DeathsFromJson(json);
  Map<String, dynamic> toJson() => _$DeathsToJson(this);

  @JsonKey(name: "new", includeIfNull: true)
  String? newDeaths;

  @JsonKey(name: "1M_pop", includeIfNull: true)
  String? percentPop;

  @JsonKey(includeIfNull: true)
  int? total;
}

@JsonSerializable()
class Tests {
  Tests(this.percentPop, this.total);

  factory Tests.fromJson(Map<String, dynamic> json) => _$TestsFromJson(json);
  Map<String, dynamic> toJson() => _$TestsToJson(this);

  @JsonKey(name: "1M_pop", includeIfNull: true)
  String? percentPop;

  @JsonKey(includeIfNull: true)
  int? total;
}