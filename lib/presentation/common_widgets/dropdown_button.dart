import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropdownButtton extends StatefulWidget {
  DropdownButtton(
      {super.key, required this.items, required this.selectedValue});

  final List items;
  dynamic selectedValue;
  @override
  State<DropdownButtton> createState() => _DropdownButttonState();
}

class _DropdownButttonState extends State<DropdownButtton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: DropdownButton(
        value: widget.selectedValue,
        items: widget.items
            .map<DropdownMenuItem>((value) => DropdownMenuItem(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
        onChanged: (newvalue) {
          setState(() {
            widget.selectedValue = newvalue;
          });
        },
      ),
    );
  }
}
