import 'package:flutter/material.dart';
import 'package:gloria/utils/routs.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeRout);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (Value) {
                          name = Value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "password cannot be empty";
                            } else if (value.length < 6) {
                              return "password length should be atleast 6";
                            } else {
                              return null;
                            }
                          }),
                      const SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () async => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      )
                      //ElevatedButton(
                      // child: const Text("Login"),
                      // style: TextButton.styleFrom(
                      //  minimumSize: const Size(150, 40)),
                      // onPressed: () {
                      //   Navigator.pushNamed(context, MyRouts.homeRout);
                      // },
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
