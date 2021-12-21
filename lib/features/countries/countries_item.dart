import 'package:covid_flutter/common_ui/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class CountriesItem extends StatelessWidget {
  const CountriesItem({
    Key? key,
    required this.countryName,
    required this.countryPressed
  }) : super(key: key);

  final String countryName;
  final Function(String countryName) countryPressed;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => countryPressed(countryName),
    child: Card(
      elevation: 0,
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        countryName,
        style: TextStyles.semiBoldTextStyle.copyWith(
            fontSize: 17
        ),
      ).paddingAll(20.0),
    ).marginAll(8.0),
  );
}
