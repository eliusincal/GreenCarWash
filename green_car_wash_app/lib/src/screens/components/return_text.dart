import 'package:flutter/material.dart';

class ReturnText extends StatelessWidget {
  final String url;
  const ReturnText({
    Key key,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context, url);
          },
          child: Text(
            "Regresar",
            style: TextStyle(
              color: Color(0xff193052),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}