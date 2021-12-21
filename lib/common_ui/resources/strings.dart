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
    "general": "Genel Bilgiler",
    "continent": "Kıta ismi: @continent",
    "country": "Ülke ismi: @country",
    "population": "Nüfus: @population",
    "cases": "Vaka Bilgileri",
    "new": "Yeni: @new",
    "active": "Hasta sayısı: @active",
    "critical": "Ağır hasta sayısı: @critical",
    "recovered": "İyileşen sayısı: @recovered",
    "1M_pop": "1 Mil başına: @1M_pop",
    "total": "Toplam: @total",
    "deaths": "Vefat Bilgileri",
    "error": "Bir hata oluştu",
    "try_again": "Tekrar dene",
    "unknown": "Bilinmiyor",
  };

  final _enStrings = {
    "search": "Search",
    "empty": "Result not found",
    "country_details_title": "Country Details",
    "general": "General",
    "continent": "Continent name: @continent",
    "country": "Country name: @country",
    "population": "Population: @population",
    "cases": "Cases",
    "new": "New: @new",
    "active": "Active cases: @active",
    "critical": "Critical cases: @critical",
    "recovered": "Recovered: @recovered",
    "1M_pop": "Per 1 mill: @1M_pop",
    "total": "Total: @total",
    "deaths": "Deaths",
    "error": "Something went wrong",
    "try_again": "Try again",
    "unknown": "Unknown",
  };
}