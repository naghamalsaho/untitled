import 'package:flutter/material.dart';

class CustomTextFormInfo extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextFormInfo({
    Key? key,
    required this.labelText,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.black),
        ),
        TextFormField(
          controller: controller,
          validator: validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return 'هذا الحقل لا يمكن أن يكون فارغًا';
                }
                return null;
              },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            filled: true,
            fillColor: Colors.grey[300],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.purple, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }
}
