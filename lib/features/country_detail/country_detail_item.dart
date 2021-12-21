import 'package:covid_flutter/common_ui/resources/text_styles.dart';
import 'package:covid_flutter/model/country_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountryDetailItem extends StatelessWidget {
  const CountryDetailItem({
    Key? key,
    required this.countryDetail
  }) : super(key: key);
  final CountryDetail countryDetail;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "general".tr,
        style: TextStyles.semiBoldTextStyle.copyWith(
          fontSize: 17
        ),
      ).marginOnly(top: 10),
      Text(
        "continent".trParams({
          "continent": countryDetail.continent ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "country".trParams({
          "country": countryDetail.country ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "population".trParams({
          "population": countryDetail.population?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "cases".tr,
        style: TextStyles.semiBoldTextStyle.copyWith(
            fontSize: 17
        ),
      ).marginOnly(top: 20),
      Text(
        "new".trParams({
          "new": countryDetail.caseDetails.newCases ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "active".trParams({
          "active": countryDetail.caseDetails.active?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "critical".trParams({
          "critical": countryDetail.caseDetails.critical?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "recovered".trParams({
          "recovered": countryDetail.caseDetails.recovered?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "1M_pop".trParams({
          "1M_pop": countryDetail.caseDetails.percentPop ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "total".trParams({
          "total": countryDetail.caseDetails.total?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "deaths".tr,
        style: TextStyles.semiBoldTextStyle.copyWith(
            fontSize: 17
        ),
      ).marginOnly(top: 20),
      Text(
        "new".trParams({
          "new": countryDetail.deathsDetails.newDeaths ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "1M_pop".trParams({
          "1M_pop": countryDetail.deathsDetails.percentPop ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
      Text(
        "total".trParams({
          "total": countryDetail.deathsDetails.total?.toString() ?? "unknown".tr
        }),
        style: TextStyles.regularTextStyle,
      ).marginSymmetric(vertical: 5),
    ],
  ).paddingSymmetric(horizontal: 10);
}