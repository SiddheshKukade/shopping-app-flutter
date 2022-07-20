import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/utils/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool changeButton = false;

  moveToHome() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouter.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset("assets/images/loginImg.png", fit: BoxFit.cover),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $username",
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Ex. sidOp",
                          label: Text("Username"),
                        ),
                        onChanged: (val) {
                          username = val;
                          setState(
                            () => {},
                          );
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter username here !";
                          }
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "ssshhh !",
                        label: Text("Password"),
                      ),
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Enter longer password";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => moveToHome(),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),

                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       minimumSize: const Size(200, 50),
                    //       maximumSize: const Size(200, 50),
                    //     ),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRouter.homeRoute);
                    //     },
                    //     child: const Text(
                    //       "Login",
                    //       style: TextStyle(fontSize: 18),
                    //     ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
