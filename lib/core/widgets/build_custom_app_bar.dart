import 'package:flutter/material.dart';
import 'package:fruits_hup/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(title, style: TextStyles.bold19),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new),
    ),
  );
}
