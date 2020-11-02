import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget{
  final Widget child;
  final String text;
  const TextFieldContainer({
    Key key,
    this.child,
    this.text
  }) : super (key:key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
        padding: EdgeInsets.symmetric(horizontal:20, vertical:5),
        width: size.width * 0.85,
        child:  Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child:Text(
              text,
              style: TextStyle(
                fontSize: 15.00,
                color: Color(0xff193052),
              ),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
        padding: EdgeInsets.symmetric(horizontal:20, vertical:5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xffc6c6c6),
            width: 2,
          ),
        ),
        child:child,
      ),
    ],
  );
  }
}