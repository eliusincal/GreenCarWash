import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/confirm_register/confirm_register.dart';
import 'package:green_car_wash_app/src/screens/home/home.dart';
import 'package:green_car_wash_app/src/screens/login/login.dart';
import 'package:green_car_wash_app/src/screens/my_orders/my_ordes.dart';
import 'package:green_car_wash_app/src/screens/products/products.dart';
import 'package:green_car_wash_app/src/screens/recover_account/recover_acount.dart';
import 'package:green_car_wash_app/src/screens/register/register.dart';
import 'package:green_car_wash_app/src/screens/services/services.dart';
import 'package:green_car_wash_app/src/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      routes: <String, WidgetBuilder>{
        Services.routeName: (BuildContext context)=>Services(),
        Products.routeName: (BuildContext context)=>Products(),
        MyOrders.routeName: (BuildContext context)=>MyOrders(),
        Login.routeName: (BuildContext context)=>Login(),
        Register.routeName: (BuildContext context)=>Register(),
        ConfirmRegister.routeName: (BuildContext context)=>ConfirmRegister(),
        Home.routeName: (BuildContext context)=>Home(),
        RecoverAccount.routeName :(BuildContext conntet)=>RecoverAccount(),
      },
  ));
}