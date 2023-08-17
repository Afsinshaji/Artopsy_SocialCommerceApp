import 'package:artopsy/core/colors/colors.dart';
import 'package:artopsy/presentation/screens/search/screen_search.dart';
import 'package:flutter/material.dart';

class SearchScreenBar extends StatefulWidget {
  const SearchScreenBar({super.key, required this.searchList});

  final List<String> searchList;
  @override
  State<SearchScreenBar> createState() => _SearchScreenBarState();
}

class _SearchScreenBarState extends State<SearchScreenBar> {
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
        onChanged: (value) {
          search(value);
        },
      ),
    );
  }

  search(String value) {
    setState(() {
      ScreenSearch.searchingArt.value = value;
    });
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}
