import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
      padding: EdgeInsets.symmetric(horizontal:20, vertical:5),              
      width: size.width * 0.85,
      child: PinCodeTextField(
        appContext: context,
        length: 6, 
        onChanged: (String value) {
          print(value);
        },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(3),
          inactiveColor: Color(0xffc6c6c6),
          selectedColor: Color(0xffc6c6c6),
          activeColor: Color(0xff49b72a),

        ),
      ),
    );
  }
}