import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'search here...',
          hintStyle: TextStyles.font12GrayMedium,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Color(0xFFF2F4F7),
        ),
      ),
    );
  }
}
