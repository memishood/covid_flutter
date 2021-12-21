import 'package:covid_flutter/common_ui/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class ErrorView extends StatelessWidget {
  const ErrorView({
    Key? key,
    required this.errorMessage,
    required this.onPressed
  }) : super(key: key);

  final String? errorMessage;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Text(
        errorMessage ?? "error".tr,
        style: TextStyles.regularTextStyle,
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        child: Text("try_again".tr),
        onPressed: onPressed,
      )
    ],
  );
}