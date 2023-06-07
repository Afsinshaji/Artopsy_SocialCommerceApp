import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/list/list.dart';
import '../../common_widgets/dropdown_button.dart';

class AddArtworkScreen extends StatelessWidget {
  const AddArtworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              const Column(
                children: [
                  ArtworkTextfield(
                    text: 'Title your Artwork',
                    maxLines: 2,
                  ),
                  ArtworkTextfield(
                    text: 'Tell us More about your art',
                    maxLines: null,
                  )
                ],
              ),
              Container()
            ],
          ),
          ArtworkDetailsButtonRow(
              items: categoryItems, detailName: 'Categories'),
          const PickYear(),
          
        ],
      )),
    );
  }
}

class PickYear extends StatefulWidget {
  const PickYear({
    super.key,
  });

  @override
  State<PickYear> createState() => _PickYearState();
}

class _PickYearState extends State<PickYear> {
  var selectedYear = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        children: [
          const Text('Select year Artwork made'),
          Text(selectedYear.toString())
        ],
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Select Year"),
              content: SizedBox(
                width: 300,
                height: 300,
                child: YearPicker(
                  firstDate: DateTime(DateTime.now().year - 1000, 1),
                  lastDate: DateTime(DateTime.now().year, 1),
                  initialDate: DateTime.now(),
                  selectedDate: selectedYear,
                  onChanged: (DateTime dateTime) {
                    setState(() {
                      selectedYear = dateTime;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ArtworkDetailsButtonRow extends StatelessWidget {
  const ArtworkDetailsButtonRow(
      {super.key, required this.items, required this.detailName});

  final List items;
  final String detailName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(detailName),
        DropdownButtton(
          items: items,
          selectedValue: items[0],
        ),
      ],
    );
  }
}

class ArtworkTextfield extends StatelessWidget {
  const ArtworkTextfield(
      {super.key, required this.text, required this.maxLines});
  final String text;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text, labelStyle: const TextStyle(color: kGreyColor)),
      autofocus: false,
      maxLines: maxLines,
    );
  }
}
