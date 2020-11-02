import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/pin_code_field.dart';
import 'package:green_car_wash_app/src/screens/components/return_text.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_button.dart';

class ConfirmRegister extends StatelessWidget{
  static const String routeName = "/confirmregister";
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            SizedBox(
              height: 20,
            ),            
            Text(
                "Confirmar Registro",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff193052),
                ),
              ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal:20),
              padding: EdgeInsets.symmetric(horizontal:20, vertical:5),              
              width: size.width * 0.85,
              child:Text(
                "Por tu seguridad requerimos que escribas el código de 6 dígitos que fue enviado a tu teléfono para confirmar tu registro",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff193052),
                ),
              ),
            ),
            PinCodeField(size: size),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                  },
                  child: Text(
                    "Enviarme de nuevo el código",
                    style: TextStyle(
                      color: Color(0xff3482b7),
                      fontSize: 11,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RoudedButton(
              text: "CONFIRMAR",
              press: (){
                Navigator.pushReplacementNamed(context, "/home");
              },
              color: Color(0xff49b72a),
              textColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            ReturnText(
              url: "/register",
            )
          ],
        ),
      ),  
    );
  }
}


