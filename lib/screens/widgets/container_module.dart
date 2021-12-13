import 'package:flutter/material.dart';

class ContainerModule extends StatelessWidget {
  const ContainerModule({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 200,
        width: MediaQuery.of(context).size.width * .8,
        color: Colors.blue,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
