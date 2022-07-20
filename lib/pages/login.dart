import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/loginImg.png", fit: BoxFit.cover),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Ex. sidOp",
                    label: Text("Username"),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "ssshhh !",
                    label: Text("Password"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Login"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
