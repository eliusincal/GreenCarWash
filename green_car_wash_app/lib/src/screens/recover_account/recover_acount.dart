import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/return_text.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_button.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_input_field.dart';

class RecoverAccount extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo/logo@3x.png',
              fit: BoxFit.none,
              scale: 2,
            ),
            Text(
              "Recuperar contraseña",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff193052),
              ),
            ),
            SizedBox(
              height: 20,
            ), 
            RoundedInputField(
              hintText: "Teléfono",
              onChanged: (value){
              },
            ),
            RoundedInputField(
              hintText: "Nombre",
              onChanged: (value){
              },
            ),
            RoundedInputField(
              hintText: "Apellido",
              onChanged: (value){
              },
            ),
            SizedBox(
              height: 20,
            ), 
            RoudedButton(
              text: "RECUPERAR",
              press: (){},
              color: Color(0xff49b72a),
              textColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),  
            ReturnText(
              url: "/login",
            )
          ],
        ),
      ),  
    );
  }
}


