import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
