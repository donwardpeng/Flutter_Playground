import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatefulPasswordInput();
  }
}

class StatefulPasswordInput extends State<PasswordInput> {
  bool obscurePassword = true;

  void updatePasswordVisibility() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: TextField(
        decoration: InputDecoration(hintText: 'Password'),
        obscureText: obscurePassword,
      )),
      IconButton(
        icon: Icon(obscurePassword ? Icons.visibility : Icons.visibility_off),
        onPressed: () {
          updatePasswordVisibility();
        },
      ),
    ]);
  }
}
