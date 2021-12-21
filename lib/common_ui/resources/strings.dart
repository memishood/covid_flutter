import 'package:get/get.dart';

/// @author emremms35@gmail.com
class Strings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "tr_TR": _trStrings,
    "en_US": _enStrings
  };

  final _trStrings = {
    "search": "Ara",
    "empty": "Sonuç bulunamadı",
    "country_details_title": "Ülke Detayları",
  };

  final _enStrings = {
    "search": "Search",
    "empty": "Result not found",
    "country_details_title": "Country Details",
  };
}