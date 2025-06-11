import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

buildAppBar({required Function()? onBack, required String title}) {
  return AppBar(
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.white,
    title: Center(
        child: Text(
      title,
      style: TextStyles.font24BlueBold.copyWith(color: Colors.black87),
    )),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: onBack,
    ),
  );
}
