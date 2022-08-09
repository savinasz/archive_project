import 'package:flutter/material.dart';

class ArchiveGenericTextInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final int? maxLines, maxLength;
  final String? hintText;
  final Function(String)? onSubmitted;
  const ArchiveGenericTextInput({Key? key, required this.controller, this.maxLines, this.hintText, required this.inputType, this.onSubmitted, this.maxLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      child: TextFormField(
        showCursor: true,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        maxLength: maxLength,
        onFieldSubmitted: onSubmitted,
        cursorColor: Colors.black45,
        validator: (value) =>
        value == null || value.isEmpty ? "Field ini tidak boleh kosong" : null,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black45,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
