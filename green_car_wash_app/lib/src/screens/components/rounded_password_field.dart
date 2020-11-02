import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/text_field_container.dart';
import 'package:green_car_wash_app/src/screens/recover_account/recover_acount.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool pass;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.pass = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children:<Widget>[ 
        TextFieldContainer(
          child: TextField(
            obscureText: true,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: "Contraseña",
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xff3482b7),
              ),
              border: InputBorder.none,  
            )
          ),
          text: "Contraseña",
        ),
        pass ?
        GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
            padding: EdgeInsets.symmetric(horizontal:20, vertical:5),
            width: size.width * 0.85,
            child:  Align(
              alignment: Alignment.centerRight,
              child: Container(
                child:Text(
                  "Recuperar mi contraseña",
                  style: TextStyle(
                    fontSize: 11.00,
                    color: Color(0xff3482b7),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          onTap: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => RecoverAccount()), (Route<dynamic> route) => false);
          },
        ):    
        SizedBox(
          height: 20,
        ),       
      ]
    );
  }
}

