import 'package:covid_flutter/common_ui/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @author emremms35@gmail.com
class EmptyView extends StatelessWidget {
  const EmptyView({
    Key? key,
    required this.onPressed
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Text(
        "empty".tr,
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