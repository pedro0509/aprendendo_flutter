import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              onChanged: (text) {
                email = text;
                print(email);
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'E-mail', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                password = text;
                print(password);
              },
              decoration: InputDecoration(
                  labelText: 'PassWord', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == 'pedromanoel0509@hotmail.com' &&
                    password == '123') {
                  Navigator.of(context).pushReplacementNamed('/home');
                  print('Entrou');
                } else {
                  print('Login Invalido');
                }
              },
              child: Text('Entrar'),
            )
          ]),
        ),
      ),
    );
  }
}
