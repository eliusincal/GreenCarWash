import 'package:flutter/material.dart';

class AlreadyAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyAccount({
    Key key,
    this.login = true,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "No tengo cuenta" : "Ya tengo una cuenta",
          style: TextStyle(
            color: Color(0xff193052),
            fontSize: 12
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registrarme" : "Iniciar Sesión",
            style: TextStyle(
              color: Color(0xff193052),
              fontSize: 14,
              decoration: TextDecoration.underline
            ),
          ),
        ),
      ],
    );
  }
}




