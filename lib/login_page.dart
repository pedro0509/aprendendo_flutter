import 'package:flutter/material.dart';

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
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Logo_TV_2015.png/250px-Logo_TV_2015.png'),
            ),
            Container(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'E-mail', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'PassWord', border: OutlineInputBorder()),
                )),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == 'pedromanoel0509@hotmail.com' &&
                    password == '123') {
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  print('Login Invalido');
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 7,
                  right: 40,
                  bottom: 7,
                ),
                primary: Color.fromARGB(255, 92, 207, 152), // Background color
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50), // <-- Radius
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 30),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
