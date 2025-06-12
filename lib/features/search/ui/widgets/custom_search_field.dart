import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const CustomSearchField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'search here...',
          hintStyle: TextStyles.font12GrayMedium,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xFFF2F4F7),
        ),
      ),
    );
  }
}
