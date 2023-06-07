import 'package:artopsy/core/colors/colors.dart';
import 'package:flutter/material.dart';

class SearchScreenBar extends StatelessWidget {
  const SearchScreenBar({super.key});
  final pink = const Color(0xFFFACCCC);
  final grey = const Color(0xFFF2F2F7);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: kWhiteColor,
            focusColor: pink,
            focusedBorder: _border(pink),
            border: _border(grey),
            enabledBorder: _border(grey),
            hintText: 'Start Search',
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            )),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}
