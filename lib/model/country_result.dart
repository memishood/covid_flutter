/// @author emremms35@gmail.com
class CountryResult {
  const CountryResult({
    required this.get,
    required this.parameters,
    required this.errors,
    required this.results,
    required this.response
  });

  final String get;
  final List<dynamic> parameters;
  final List<dynamic> errors;
  final int results;
  final List<dynamic> response;

  factory CountryResult.fromJson(json) => CountryResult(
      get: json["get"],
      parameters: json["parameters"],
      errors: json["errors"],
      results: json["results"],
      response: json["response"]
  );
}