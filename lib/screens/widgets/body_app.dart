import 'package:flutter/material.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        shrinkWrap: true,
        children: children,
      ),
    );
  }
}
