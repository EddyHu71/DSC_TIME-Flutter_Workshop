import 'package:flutter/material.dart';
import 'package:hello_world/hello_world.dart';
import 'package:hello_world/login_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginForm(),
    );
  }
}