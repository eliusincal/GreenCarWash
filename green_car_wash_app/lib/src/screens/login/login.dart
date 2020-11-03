import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/components/already_account_text.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_button.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_input_field.dart';
import 'package:green_car_wash_app/src/screens/components/rounded_password_field.dart';

class Login extends StatelessWidget{
  static const String routeName = "/login";
  final GlobalKey<FormState> formKey= new GlobalKey<FormState>();
  String errorPass ="";
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Form(
        key: formKey,
        child: Container(
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
                "Iniciar Sesión",
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
                isNumber: true,
                validator: (value){

                },
              ),
              RoundedPasswordField(
                onChanged: (value){},
                validator: (value){
                  print(value);
                  if(value.length < 6){
                    errorPass = "Contraseña incorrecta";
                  }
                  return null;
                },
              ),
              Text(errorPass),
              SizedBox(
                height: 20,
              ),  
              RoudedButton(
                text: "ENTRAR",
                press: (){
                  formKey.currentState.validate();
                  //Navigator.pushReplacementNamed(context, "/home");
                },
                color: Color(0xff49b72a),
                textColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              AlreadyAccount(
                login: true,
                press: (){
                  Navigator.pushReplacementNamed(context, "/register");
                },
              )
            ],
          ),
        ),
      ),  
    );
  }
}
