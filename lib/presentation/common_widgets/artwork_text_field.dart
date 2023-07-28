import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class ArtworkTextfield extends StatefulWidget {
  const ArtworkTextfield({
    super.key,
    required this.maxLines,
    required this.textEditingController,
    this.textInputType = TextInputType.text,
    this.editText = '',
    this.isPriceText = false,
    this.isToValidate = false,
  });

  final int? maxLines;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String? editText;
  final bool isPriceText;
  final bool isToValidate;

  @override
  State<ArtworkTextfield> createState() => _ArtworkTextfieldState();
}

class _ArtworkTextfieldState extends State<ArtworkTextfield> {
  final ValueNotifier<bool> checked = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    if (widget.editText != '') {
      widget.textEditingController.text =
          widget.editText == null ? '' : widget.editText!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: kWhiteColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
          onFieldSubmitted: (value) {},
          keyboardType: widget.textInputType,
          controller: widget.textEditingController,
          style: const TextStyle(color: kWhiteColor),
          cursorColor: kWhiteColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            errorBorder: InputBorder.none,
            errorStyle: const TextStyle(color: kWhiteColor),
            prefixIcon: widget.isPriceText
                ? const Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      '₹',
                      style: TextStyle(color: kWhiteColor, fontSize: 22),
                    ))
                : null,
            contentPadding: const EdgeInsets.all(18),
            focusedBorder: InputBorder.none,
            labelStyle: const TextStyle(color: kWhiteColor),
          ),
          autofocus: false,
          maxLines: widget.maxLines,
          validator: (text) {
            if (widget.isToValidate && (text == null || text.isEmpty)) {
              return "Can't be Empty";
            }
            return null;
          }),
    );
  }
}
