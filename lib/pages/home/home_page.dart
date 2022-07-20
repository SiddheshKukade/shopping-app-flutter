import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "Welcome to flutter 2  ",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 32,
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("ShopBee - Your one stop solution !"),
      ),
      drawer: const Drawer(backgroundColor: Colors.tealAccent),
    );
  }
}
