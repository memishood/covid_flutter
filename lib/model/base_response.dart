/// @author emremms35@gmail.com
class BaseResponse {
  const BaseResponse({
    required this.get,
    required this.parameters,
    required this.errors,
    required this.results,
    required this.response
  });

  final String get;
  final dynamic parameters;
  final dynamic errors;
  final int results;
  final List<dynamic> response;

  factory BaseResponse.fromJson(json) => BaseResponse(
      get: json["get"],
      parameters: json["parameters"],
      errors: json["errors"],
      results: json["results"],
      response: json["response"]
  );
}