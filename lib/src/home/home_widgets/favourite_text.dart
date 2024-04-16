import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_strings.dart';

class FavouriteTextWidget extends StatelessWidget {
  const FavouriteTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(favColor, style: TextStyle(color: colorBlack, fontSize: 15),);
  }
}
