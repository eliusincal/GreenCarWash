import 'package:flutter/material.dart';

class MyOrders  extends StatelessWidget{
  static const String routeName = "/myorders";
  const MyOrders({key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Mis ordenes"),
        backgroundColor: Color(0xff193052),
      ),
      body:Container(
        child: Center(
          child: Text("Listado de ordenes"),
        ),
      )
    );
  }
}