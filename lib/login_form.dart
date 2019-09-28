import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form"),),
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: _usernameController,
          ),
        ],
      ),
    );
  }
}