import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/already_account_text.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_button.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_input_field.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_password_field.dart';

class Register extends StatelessWidget{
  static const String routeName = "/register";
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
              scale: 3,
            ),
            Text(
              "Registro",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff193052),
              ),
            ),
            RoundedInputField(
              hintText: "Teléfono",
              onChanged: (value){
              },
              isNumber: true,
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
            RoundedPasswordField(
              pass: false,
              onChanged: (value){},
            ),
            RoudedButton(
              text: "REGISTRARME",
              press: (){          
                Navigator.pushReplacementNamed(context, "/confirmregister");
              },
              color: Color(0xff49b72a),
              textColor: Colors.white,
            ),
            
            SizedBox(
              height: 20,
            ),  
            AlreadyAccount(
              login: false,
              press: (){
                Navigator.pushReplacementNamed(context, "/login");
              },
            )
          ],
        ),
      ),  
    );
  }
}
