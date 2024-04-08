import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class CustomButtomAuth extends StatelessWidget {
  final text;

  final void Function()? onPressed;
  const CustomButtomAuth({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: Colors.purple,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}

class CustomButtomAuth2 extends StatelessWidget {
  final text;
  final name;
  final void Function()? onPressed;
  const CustomButtomAuth2({super.key, this.text, this.onPressed, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 8),
        onPressed: onPressed,
        color: Colors.purple,
        textColor: Colors.white,
        child: Row(
          children: [
            Text(text),
            Image.asset(name, width: 20),
          ],
        ),
      ),
    );
  }
}
