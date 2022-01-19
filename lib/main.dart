import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool CheckBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get\'s started',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.white,
            ),
            Container(
              child: Text('Full name'),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Full name',
                ),
              ),
            ),
            Container(
              child: Text('Email address'),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              child: Text('Password'),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 40,
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Row(children: [
                    Checkbox(
                      value: false,
                      onChanged: (True) {},
                    ),
                    const Text(
                      'i agree to ',
                      style: TextStyle(color: Colors.black45),
                    ),
                    const InkWell(
                      child: Text(
                        'Company \' s term ',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    const Text(
                      'and service',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(left: 47),
                  child: const InkWell(
                    child: Text(
                      'Privacy policy \' s',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                )
              ],
            ),
            Container(
                alignment: Alignment.center,
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    print(passwordController.text);
                  },
                )),
            Container(
              child: Text('Befekadu Berkie 14690/20 cs3'),
            ),
          ],
        ),
      ),
    );
  }
}
