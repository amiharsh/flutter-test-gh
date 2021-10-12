import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  GlobalKey _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Card(
                elevation: 20,
                child: Container(
                    padding: EdgeInsets.all(30),
                    width: 300,
                    child: Form(
                        key: _formkey,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Flutter Guide'),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Enter Email',
                                    border: UnderlineInputBorder()),
                                controller: email,
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ]
                        )
                    )
                )
            )
        )
    );
  }
}