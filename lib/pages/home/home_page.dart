import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Welcome to flutter 2  ",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 32,
        ),
      ),
    );
  }
}
