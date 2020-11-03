import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final bool isNumber;
  final validator;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.isNumber = false,
    this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        TextFieldContainer(
          child: TextFormField(
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none, 
            ),
            validator: validator,
          ),
          text: hintText,
        )
      ]
    );
  }
}