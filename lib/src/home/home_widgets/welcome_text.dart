import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(welcome, style: TextStyle(fontSize: 28, color: colorWhite, fontWeight: FontWeight.bold),);
  }
}