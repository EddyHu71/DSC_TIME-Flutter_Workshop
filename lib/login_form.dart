import 'package:flutter/material.dart';
import 'package:hello_world/TabBar.dart';
import 'package:hello_world/get_api.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                  controller: _usernameController,
                  maxLength: 10,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Masukkan Username';
                    }
                    return null;
                  },
                ),
                // TextFormField(
                //   decoration: InputDecoration(
                //       labelText: "Username",
                //       filled: true,
                //       fillColor: Colors.grey[300],
                //       prefixIcon: Icon(Icons.person)),
                //   controller: _usernameController,
                //   maxLength: 32,
                //   validator: (value) {
                //     if (value.isEmpty) {
                //       return 'Masukkan Username';
                //     }
                //     return null;
                //   },
                // ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green,
                      )),
                  controller: _passwordController,
                  maxLength: 32,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Masukkan Username';
                    }
                    return null;
                  },
                ),
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //       labelText: "Password",
                //       filled: true,
                //       fillColor: Colors.grey[300],
                //       prefixIcon: Icon(
                //         Icons.lock,
                //         color: Colors.green,
                //       )),
                //   controller: _passwordController,
                //   maxLength: 32,
                //   validator: (value) {
                //     if (value.isEmpty) {
                //       return 'Masukkan Password';
                //     }
                //     return null;
                //   },
                // ),
                SizedBox(height: 20,),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterTabBar()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      );
  }
}
