import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .5,
          color: Colors.blue,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
