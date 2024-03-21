import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class CustomButtomAuth extends StatelessWidget {
  final text;
  final void Function()? onPressed;
  const CustomButtomAuth({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color:Colors.purple,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
